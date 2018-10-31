package lxf.ssm.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import lxf.ssm.dao.BlogMapper;
import lxf.ssm.service.IBlogService;
import lxf.ssm.vo.Blog;

@Service("bolgService")
public class BlogService implements IBlogService   {
	@Resource
	private BlogMapper blogDao;

    @Override
    public int addBlog(Blog blog) {
        return this.blogDao.insert(blog);
    }

}