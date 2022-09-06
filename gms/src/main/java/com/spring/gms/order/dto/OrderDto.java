package com.spring.gms.order.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class OrderDto {
	
	private int orderCd;
	private int goodsCd;
	private int orderGoodsQty;
	private int paymentAmt;
	private String memberId;
	private String ordererNm;
	private String ordererHp;
	private String zipcode;
	private String roadAddress;
	private String jibunAddress;
	private String namujiAddress;
	private String payMethod;
	private String cardCompanyNm;
	private String cardPayMonth;
	private String payOrdererHp;
	private Date payOrderTime;
	
	public int getOrderCd() {
		return orderCd;
	}
	public void setOrderCd(int orderCd) {
		this.orderCd = orderCd;
	}
	public int getGoodsCd() {
		return goodsCd;
	}
	public void setGoodsCd(int goodsCd) {
		this.goodsCd = goodsCd;
	}
	public int getOrderGoodsQty() {
		return orderGoodsQty;
	}
	public void setOrderGoodsQty(int orderGoodsQty) {
		this.orderGoodsQty = orderGoodsQty;
	}
	public int getPaymentAmt() {
		return paymentAmt;
	}
	public void setPaymentAmt(int paymentAmt) {
		this.paymentAmt = paymentAmt;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getOrdererNm() {
		return ordererNm;
	}
	public void setOrdererNm(String ordererNm) {
		this.ordererNm = ordererNm;
	}
	public String getOrdererHp() {
		return ordererHp;
	}
	public void setOrdererHp(String ordererHp) {
		this.ordererHp = ordererHp;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getRoadAddress() {
		return roadAddress;
	}
	public void setRoadAddress(String roadAddress) {
		this.roadAddress = roadAddress;
	}
	public String getJibunAddress() {
		return jibunAddress;
	}
	public void setJibunAddress(String jibunAddress) {
		this.jibunAddress = jibunAddress;
	}
	public String getNamujiAddress() {
		return namujiAddress;
	}
	public void setNamujiAddress(String namujiAddress) {
		this.namujiAddress = namujiAddress;
	}
	public String getPayMethod() {
		return payMethod;
	}
	public void setPayMethod(String payMethod) {
		this.payMethod = payMethod;
	}
	public String getCardCompanyNm() {
		return cardCompanyNm;
	}
	public void setCardCompanyNm(String cardCompanyNm) {
		this.cardCompanyNm = cardCompanyNm;
	}
	public String getCardPayMonth() {
		return cardPayMonth;
	}
	public void setCardPayMonth(String cardPayMonth) {
		this.cardPayMonth = cardPayMonth;
	}
	public String getPayOrdererHp() {
		return payOrdererHp;
	}
	public void setPayOrdererHp(String payOrdererHp) {
		this.payOrdererHp = payOrdererHp;
	}
	public Date getPayOrderTime() {
		return payOrderTime;
	}
	public void setPayOrderTime(Date payOrderTime) {
		this.payOrderTime = payOrderTime;
	}
	
	@Override
	public String toString() {
		return "OrderDto [orderCd=" + orderCd + ", goodsCd=" + goodsCd + ", orderGoodsQty=" + orderGoodsQty
				+ ", paymentAmt=" + paymentAmt + ", memberId=" + memberId + ", ordererNm=" + ordererNm + ", ordererHp="
				+ ordererHp + ", zipcode=" + zipcode + ", roadAddress=" + roadAddress + ", jibunAddress=" + jibunAddress
				+ ", namujiAddress=" + namujiAddress + ", payMethod=" + payMethod + ", cardCompanyNm=" + cardCompanyNm
				+ ", cardPayMonth=" + cardPayMonth + ", payOrdererHp=" + payOrdererHp + ", payOrderTime=" + payOrderTime
				+ "]";
	}
	
	
}
