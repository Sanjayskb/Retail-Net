package com.retailnet.location;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="cities")
public class Cities {

	int cityId;
	String cityName;
	States states;
	int status;
	public Cities() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Cities(int cityId, String cityName, States states, int status) {
		super();
		this.cityId = cityId;
		this.cityName = cityName;
		this.states = states;
		this.status = status;
	}

	@Id
	@GeneratedValue
	@Column(name="id")
	public int getCityId() {
		return cityId;
	}

	public void setCityId(int cityId) {
		this.cityId = cityId;
	}

	@Column(name="city")
	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	@ManyToOne
	@JoinColumn(name="state_id")
	public States getStates() {
		return states;
	}

	public void setStates(States states) {
		this.states = states;
	}

	@Column(name="status")
	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
	
	
}
