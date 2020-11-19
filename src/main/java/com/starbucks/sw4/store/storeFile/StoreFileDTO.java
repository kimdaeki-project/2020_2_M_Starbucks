package com.starbucks.sw4.store.storeFile;

public class StoreFileDTO {
	
	private long fileNum;
	private long storeCode;
	private String defaultFile;
	private String etcFile;
	
	
	public long getFileNum() {
		return fileNum;
	}
	public void setFileNum(long fileNum) {
		this.fileNum = fileNum;
	}
	public long getStoreCode() {
		return storeCode;
	}
	public void setStoreCode(long storeCode) {
		this.storeCode = storeCode;
	}
	public String getDefaultFile() {
		return defaultFile;
	}
	public void setDefaultFile(String defaultFile) {
		this.defaultFile = defaultFile;
	}
	public String getEtcFile() {
		return etcFile;
	}
	public void setEtcFile(String etcFile) {
		this.etcFile = etcFile;
	}
	
}
