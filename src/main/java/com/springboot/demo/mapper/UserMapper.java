package com.springboot.demo.mapper;

import com.springboot.demo.model.Person;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {
    @Select("SELECT * FROM jdbc1")
    List<Person> selectUser();
    @Insert("INSERT INTO jdbc1(id,age,name) VALUE (#{id},#{age}, #{name})")
    int addPaper(Person paper);
    @Delete("DELETE FROM jdbc1 WHERE id=#{id}")
    int deletePaperById(long id);
    @Update("UPDATE jdbc1 SET age = #{age},name = #{name} WHERE  id = #{id}")
    int updatePaper(Person paper);
    @Select("SELECT * FROM jdbc1 WHERE id=#{id}")
    Person queryById(long id);
}
