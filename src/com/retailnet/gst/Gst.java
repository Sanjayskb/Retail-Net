package com.retailnet.gst;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="master_gst")
public class Gst {

	int gstId;
	int gstSlab;
	public Gst() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Gst(int gstId, int gstSlab) {
		super();
		this.gstId = gstId;
		this.gstSlab = gstSlab;
	}
	@Id
	@GeneratedValue
	@Column(name="gst_id")
	public int getGstId() {
		return gstId;
	}
	
	public void setGstId(int gstId) {
		this.gstId = gstId;
	}
	@Column(name="gst_slab")
	public int getGstSlab() {
		return gstSlab;
	}
	
	public void setGstSlab(int gstSlab) {
		this.gstSlab = gstSlab;
	}
}
