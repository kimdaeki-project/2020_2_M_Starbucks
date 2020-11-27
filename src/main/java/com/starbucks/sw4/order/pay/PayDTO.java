package com.starbucks.sw4.order.pay;

import com.starbucks.sw4.order.OrderDTO;

public class PayDTO {

	/*
	       payNum number constraint pay_pn_pk primary key,
		    orderNum number constraint pay_on_fk references menuOrder(orderNum),
		    pg varchar2(100),
		    pay_method varchar2(100), 
		    merchant_uid varchar2(500) not null, 
		    amount number,
		    currency varchar2(100) default 'KRW',
		    m_redirect_url varchar2(500),
		    buyer_tel varchar(200) not null,
		    pay_amount number,
    		pay_status varchar2(100)
	 */
	
	private long payNum;
	private long orderNum;
	private String pg;
	private String pay_method;
	private String merchant_uid;
	private long amount;
	private String currency;
	private String m_redirect_url;
	private String buyer_tel;
	private long pay_amount;
	private String pay_status;
	
	private OrderDTO orderDTO;
	
	public OrderDTO getOrderDTO() {
		return orderDTO;
	}
	public void setOrderDTO(OrderDTO orderDTO) {
		this.orderDTO = orderDTO;
	}
	public long getPayNum() {
		return payNum;
	}
	public void setPayNum(long payNum) {
		this.payNum = payNum;
	}
	public long getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(long orderNum) {
		this.orderNum = orderNum;
	}
	public String getPg() {
		return pg;
	}
	public void setPg(String pg) {
		this.pg = pg;
	}
	public String getPay_method() {
		return pay_method;
	}
	public void setPay_method(String pay_method) {
		this.pay_method = pay_method;
	}
	public String getMerchant_uid() {
		return merchant_uid;
	}
	public void setMerchant_uid(String merchant_uid) {
		this.merchant_uid = merchant_uid;
	}
	public long getAmount() {
		return amount;
	}
	public void setAmount(long amount) {
		this.amount = amount;
	}
	public String getCurrency() {
		return currency;
	}
	public void setCurrency(String currency) {
		this.currency = currency;
	}
	public String getM_redirect_url() {
		return m_redirect_url;
	}
	public void setM_redirect_url(String m_redirect_url) {
		this.m_redirect_url = m_redirect_url;
	}
	public String getBuyer_tel() {
		return buyer_tel;
	}
	public void setBuyer_tel(String buyer_tel) {
		this.buyer_tel = buyer_tel;
	}
	public long getPay_amount() {
		return pay_amount;
	}
	public void setPay_amount(long pay_amount) {
		this.pay_amount = pay_amount;
	}
	public String getPay_status() {
		return pay_status;
	}
	public void setPay_status(String pay_status) {
		this.pay_status = pay_status;
	}
	
}
