package com.retailnet.user;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="master_firm_image_mapping")
public class FirmImageMapping {
	int mapping_id;
	Firm firm;
	String fileName;
	
	
	public FirmImageMapping() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public FirmImageMapping(int mapping_id, Firm firm, String fileName) {
		super();
		this.mapping_id = mapping_id;
		this.firm = firm;
		this.fileName = fileName;
	}

	@Id
	@GeneratedValue
	@Column(name="mapping_id")
	public int getMapping_id() {
		return mapping_id;
	}
	public void setMapping_id(int mapping_id) {
		this.mapping_id = mapping_id;
	}
	
	@ManyToOne
	@JoinColumn(name="firm_id")
	public Firm getFirm() {
		return firm;
	}
	public void setFirm(Firm firm) {
		this.firm = firm;
	}
	
	@Column(name="file_name")
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
	
        
}
