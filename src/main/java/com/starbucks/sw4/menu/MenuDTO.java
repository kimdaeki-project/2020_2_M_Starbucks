package com.starbucks.sw4.menu;

public class MenuDTO {

	private String menuCode;
	private String category;
	private String korName;
	private String engName;
	private String theme;
	private String limited;
	private String limitedStore;
	private String bean;
	private String via;
	private String origami;
	private String optIndex;
	private String newYN;
	private String sold;
	private int price;
	private String allergy;
	private long kal;
	private long sugars;
	private long protein;
	private long natrium;
	private long fat;
	private String season;
	private String descr;
	private String addDescr;
	private String rstDescr;
	private String tastingNotes;
	private String enjoyWith;
	private String origin;
	private String menuImage;
	private String type;
	
	private OptionDTO optionDTO;
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public OptionDTO getOptionDTO() {
		return optionDTO;
	}
	public void setOptionDTO(OptionDTO optionDTO) {
		this.optionDTO = optionDTO;
	}
	
	public String getMenuCode() {
		return menuCode;
	}
	public void setMenuCode(String menuCode) {
		this.menuCode = menuCode;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		if(category.equals("") || category.isEmpty()) {
			category="";
		}
		this.category = category;
	}
	public String getKorName() {
		return korName;
	}
	public void setKorName(String korName) {
		this.korName = korName;
	}
	public String getEngName() {
		return engName;
	}
	public void setEngName(String engName) {
		this.engName = engName;
	}
	public String getTheme() {
		return theme;
	}
	public void setTheme(String theme) {
		this.theme = theme;
	}
	public String getLimited() {
		return limited;
	}
	public void setLimited(String limited) {
		this.limited = limited;
	}
	public String getLimitedStore() {
		return limitedStore;
	}
	public void setLimitedStore(String limitedStore) {
		this.limitedStore = limitedStore;
	}
	public String getBean() {
		return bean;
	}
	public void setBean(String bean) {
		this.bean = bean;
	}
	public String getVia() {
		return via;
	}
	public void setVia(String via) {
		this.via = via;
	}
	public String getOrigami() {
		return origami;
	}
	public void setOrigami(String origami) {
		this.origami = origami;
	}
	public String getOptIndex() {
		return optIndex;
	}
	public void setOptIndex(String optIndex) {
		this.optIndex = optIndex;
	}
	public String getNewYN() {
		return newYN;
	}
	public void setNewYN(String newYN) {
		this.newYN = newYN;
	}
	public String getSold() {
		return sold;
	}
	public void setSold(String sold) {
		this.sold = sold;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getAllergy() {
		return allergy;
	}
	public void setAllergy(String allergy) {
		this.allergy = allergy;
	}
	public long getKal() {
		return kal;
	}
	public void setKal(long kal) {
		this.kal = kal;
	}
	public long getSugars() {
		return sugars;
	}
	public void setSugars(long sugars) {
		this.sugars = sugars;
	}
	public long getProtein() {
		return protein;
	}
	public void setProtein(long protein) {
		this.protein = protein;
	}
	public long getNatrium() {
		return natrium;
	}
	public void setNatrium(long natrium) {
		this.natrium = natrium;
	}
	public long getFat() {
		return fat;
	}
	public void setFat(long fat) {
		this.fat = fat;
	}
	public String getSeason() {
		return season;
	}
	public void setSeason(String season) {
		this.season = season;
	}
	public String getDescr() {
		return descr;
	}
	public void setDescr(String descr) {
		this.descr = descr;
	}
	public String getAddDescr() {
		return addDescr;
	}
	public void setAddDescr(String addDescr) {
		this.addDescr = addDescr;
	}
	public String getRstDescr() {
		return rstDescr;
	}
	public void setRstDescr(String rstDescr) {
		this.rstDescr = rstDescr;
	}
	public String getTastingNotes() {
		return tastingNotes;
	}
	public void setTastingNotes(String tastingNotes) {
		this.tastingNotes = tastingNotes;
	}
	public String getEnjoyWith() {
		return enjoyWith;
	}
	public void setEnjoyWith(String enjoyWith) {
		this.enjoyWith = enjoyWith;
	}
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	public String getMenuImage() {
		return menuImage;
	}
	public void setMenuImage(String menuImage) {
		this.menuImage = menuImage;
	}
	
}
