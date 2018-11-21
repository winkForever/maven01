
package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Area;

public interface AreaDao {
    int deleteByPrimaryKey(Integer areaId);

    int insert(Area record);

    int insertSelective(Area record);

    Area selectByPrimaryKey(Integer areaId);

    int updateByPrimaryKeySelective(Area record);

    int updateByPrimaryKey(Area record);
    
    List<Area> findAll();
    
    Area findByRoomId(@Param("roomId") Integer roomId);
    
    Area findByAreaName(@Param("areaName") String areaName);
    
    Area findByAreaId(@Param("areaId") Integer areaId);
}
