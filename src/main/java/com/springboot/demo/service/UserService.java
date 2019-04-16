package com.springboot.demo.service;


import com.springboot.demo.mapper.UserMapper;
import com.springboot.demo.model.Person;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
    @Autowired
    UserMapper userMapper;
    public List<Person> selectUser() {
        return userMapper.selectUser();
    }

    public int addPaper(Person paper) {
        return userMapper.addPaper(paper);
    }


    public int deletePaperById(long id) {
        return userMapper.deletePaperById(id);
    }


    public int updatePaper(Person paper) {
        return userMapper.updatePaper(paper);
    }


    public Person queryById(long id) {
        return userMapper.queryById(id);
    }
}
