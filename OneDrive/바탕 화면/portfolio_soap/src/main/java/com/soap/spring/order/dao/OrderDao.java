package com.soap.spring.order.dao;

import java.util.List;

import com.soap.spring.order.dto.OrderDto;
import com.soap.spring.users.usersDto.UsersDto;

public interface OrderDao {
	public List<OrderDto> getOrderList();
	public int getTotalOrderNum();
	public List<OrderDto> getOrderDetail(String order_num);
	public OrderDto getOrderInfo(String order_num);
}
