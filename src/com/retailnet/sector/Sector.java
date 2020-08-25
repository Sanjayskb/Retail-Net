/**

 * 
 */
package com.retailnet.sector;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


/**
 * @author ASUS
 *
 */
@Entity
@Table(name="master_sector")
public class Sector {
	int sectorId;
	String sectorName;
	public Sector() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Sector(int sectorId, String sectorName) {
		super();
		this.sectorId = sectorId;
		this.sectorName = sectorName;
	}
	@Id
	@GeneratedValue
	@Column(name="sector_id")
	public int getSectorId() {
		return sectorId;
	}
	
	public void setSectorId(int sectorId) {
		this.sectorId = sectorId;
	}
	@Column(name="sector_name")
	public String getSectorName() {
		return sectorName;
	}
	
	public void setSectorName(String sectorName) {
		this.sectorName = sectorName;
	}	
}
