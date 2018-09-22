package com.fh.dao.webMapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.fh.entity.web.PeopleInformation;
import com.fh.entity.web.PeopleInformationExample;

public interface PeopleInformationMapper {
    long countByExample(PeopleInformationExample example);

    int deleteByExample(PeopleInformationExample example);

    int deleteByPrimaryKey(Integer tSyPeopleInformationId);

    int insert(PeopleInformation record);

    int insertSelective(PeopleInformation record);

    List<PeopleInformation> selectByExample(PeopleInformationExample example);

    PeopleInformation selectByPrimaryKey(Integer tSyPeopleInformationId);

    int updateByExampleSelective(@Param("record") PeopleInformation record, @Param("example") PeopleInformationExample example);

    int updateByExample(@Param("record") PeopleInformation record, @Param("example") PeopleInformationExample example);

    int updateByPrimaryKeySelective(PeopleInformation record);

    int updateByPrimaryKey(PeopleInformation record);
}