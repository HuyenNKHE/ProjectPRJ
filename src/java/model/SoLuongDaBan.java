package model;

public class SoLuongDaBan {
	  private int productID;
	  private int daban;
	public int getProductID() {
		return productID;
	}
	public daban(int productID, int daban) {
	
		this.productID = productID;
		this.daban = daban;
	}
	public daban() {
		
	}
	@Override
	public String toString() {
		return "daban [productID=" + productID + ", daban=" + daban + "]";
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public int getdaban() {
		return daban;
	}
	public void setdaban(int daban) {
		this.daban = daban;
	}
}
