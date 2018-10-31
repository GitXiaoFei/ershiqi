package lxf.ssm.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@RequestMapping("file")
@Controller
public class FileController {
	/**
	 * 文件上传功能
	 * @param file
	 * @return
	 * @throws IOEception
	 */
    @RequestMapping(value="/upload", method=RequestMethod.POST)  
    @ResponseBody
	public String upload(MultipartFile file,HttpServletRequest request) throws IOException{
		String path = request.getSession().getServletContext().getRealPath("upload");
		String fileName = file.getOriginalFilename();
		
		File dir = new File(path, fileName);
		if(!dir.exists()){
			dir.mkdirs();
		}
		//MultipartFile 自带的解析方法
		file.transferTo(dir);
		return "ok";
	}
	
	/**
	 * 文件下载功能
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/down")
	public void down(HttpServletRequest request, HttpServletResponse response) throws Exception{
		//模拟文件，myfile.txt为需要下载的文件
		String fileName = request.getSession().getServletContext().getRealPath("upload") + "/github相关.txt";
		//获取输入流
		InputStream bis = new BufferedInputStream(new FileInputStream(new File(fileName)));
		//假如从中文名下载
		String filename = "下载文件.txt";
		//转码，免得文件名中文乱码
		filename = URLEncoder.encode(filename, "utf-8");
		//设置文件下载头
		response.addHeader("Content-Disposition", "attachment;filename=" + filename);
		//设置文件Cotent-Type类型，这样设置，会自动判断下载文件类型
		response.setContentType("multipart/form-data");
        BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());
        
		int len = 0;
		while ((len  = bis.read()) != 1) {
			out.write(len);
			out.flush();
		}
		out.close();
		
	}
}
