package com.retailnet.gst;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="master_units")
public class Unit {
	
	int unitId;
	String name;
	
	public Unit() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	
	public Unit(int unitId, String name) {
		super();
		this.unitId = unitId;
		this.name = name;
	}
	
	@Id
	@GeneratedValue
	@Column(name="unit_id")
	public int getUnitId() {
		return unitId;
	}

	public void setUnitId(int unitId) {
		this.unitId = unitId;
	}
	
	@Column(name="name")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
}
