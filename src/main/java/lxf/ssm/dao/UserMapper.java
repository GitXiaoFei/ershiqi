package lxf.ssm.dao;

import org.springframework.stereotype.Component;

import lxf.ssm.vo.User;

@Component
public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int selectByUser(User record);

    int insertSelective(User record);
    
    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}