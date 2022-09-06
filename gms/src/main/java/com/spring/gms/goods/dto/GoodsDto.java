package com.spring.gms.goods.dto;

public class GoodsDto {
	
	private int goodsCd;
	private String goodsNm;
	private String trainerNm;
	private int price;
	
	public int getGoodsCd() {
		return goodsCd;
	}
	public void setGoodsCd(int goodsCd) {
		this.goodsCd = goodsCd;
	}
	public String getGoodsNm() {
		return goodsNm;
	}
	public void setGoodsNm(String goodsNm) {
		this.goodsNm = goodsNm;
	}
	public String getTrainerNm() {
		return trainerNm;
	}
	public void setTrainerNm(String trainerNm) {
		this.trainerNm = trainerNm;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	@Override
	public String toString() {
		return "GoodsDto [goodsCd=" + goodsCd + ", goodsNm=" + goodsNm + ", trainerNm=" + trainerNm + ", price=" + price
				+ "]";
	}

	
	
}
