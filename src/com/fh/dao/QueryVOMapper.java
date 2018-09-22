package com.fh.dao;

import java.util.List;

import com.fh.entity.QueryVO;

public interface QueryVOMapper{
	
	/**
	 * 根据条件查询用户
	 * @param queryVO
	 * @return
	 */
	List<QueryVO> getItemsList(QueryVO queryVO);
	
}
