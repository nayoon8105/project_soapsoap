package com.soap.spring.order.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.ModelAndView;

import com.soap.spring.order.dto.OrderDto;
import com.soap.spring.users.usersDto.UsersDto;

@Repository
public class OrderDaoImpl implements OrderDao{
	@Autowired
	private SqlSession session;

	@Override
	public List<OrderDto> getOrderList() {
		List<OrderDto> orderList=session.selectList("admin.getOrderList");
		return orderList;
	}

	@Override
	public int getTotalOrderNum() {
		return session.selectOne("admin.getTotalOrderNum");
	}	

	@Override
	public List<OrderDto> getOrderDetail(String order_num) {
		return session.selectList("admin.getData",order_num);
	}
	
	@Override
	public OrderDto getOrderInfo(String order_num) {
		return session.selectOne("admin.getOrderInfo", order_num);
	}
}
