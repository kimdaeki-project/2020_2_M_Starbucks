package com.starbucks.sw4.store;

import com.starbucks.sw4.admin.tables.member.AdminMemberDTO;
import com.starbucks.sw4.store.storeFile.StoreFileDTO;
import com.starbucks.sw4.store.storeInfo.StoreInfoDTO;

public class StoreDTO {
	
	private long storeCode;
	private String storeName;
	private double lat;
	private double lot;
	private String addr;
	private String doro_addr;
	private int sidoCode;
	private String sidoName;
	private int gugunCode;
	private String gugunName;
	private String view_yn;
	
	private StoreFileDTO storeFileDTO;
	private StoreInfoDTO storeInfoDTO;

	public long getStoreCode() {
		return storeCode;
	}
	public void setStoreCode(long storeCode) {
		this.storeCode = storeCode;
	}
	public String getStoreName() {
		return storeName;
	}
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	public double getLat() {
		return lat;
	}
	public void setLat(double lat) {
		this.lat = lat;
	}
	public double getLot() {
		return lot;
	}
	public void setLot(double lot) {
		this.lot = lot;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getDoro_addr() {
		return doro_addr;
	}
	public void setDoro_addr(String doro_addr) {
		this.doro_addr = doro_addr;
	}
	public int getSidoCode() {
		return sidoCode;
	}
	public void setSidoCode(int sidoCode) {
		this.sidoCode = sidoCode;
	}
	public String getSidoName() {
		return sidoName;
	}
	public void setSidoName(String sidoName) {
		this.sidoName = sidoName;
	}
	public int getGugunCode() {
		return gugunCode;
	}
	public void setGugunCode(int gugunCode) {
		this.gugunCode = gugunCode;
	}
	public String getGugunName() {
		return gugunName;
	}
	public void setGugunName(String gugunName) {
		this.gugunName = gugunName;
	}
	public String getView_yn() {
		return view_yn;
	}
	public void setView_yn(String view_yn) {
		this.view_yn = view_yn;
	}
	
	public StoreFileDTO getStoreFileDTO() {
		return storeFileDTO;
	}
	public void setStoreFileDTO(StoreFileDTO storeFileDTO) {
		this.storeFileDTO = storeFileDTO;
	}
	public StoreInfoDTO getStoreInfoDTO() {
		return storeInfoDTO;
	}
	public void setStoreInfoDTO(StoreInfoDTO storeInfoDTO) {
		this.storeInfoDTO = storeInfoDTO;
	}
	
}
