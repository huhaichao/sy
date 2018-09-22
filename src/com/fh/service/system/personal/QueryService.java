package com.fh.service.system.personal;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fh.dao.QueryVOMapper;
import com.fh.entity.QueryVO;

@Service("QueryService")
public class QueryService {
	
	@Autowired
	private QueryVOMapper qvm;
	
	public List<QueryVO> getItemsList(QueryVO queryVO) throws Exception {
		return qvm.getItemsList(queryVO);
	}
}
