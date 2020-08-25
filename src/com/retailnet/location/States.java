package com.retailnet.location;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="states")
public class States {

	int stateId;
	String stateName;
	
	public States() {
		super();
		// TODO Auto-generated constructor stub
	}

	public States(int stateId, String stateName) {
		super();
		this.stateId = stateId;
		this.stateName = stateName;
	}

	@Id
	@GeneratedValue
	@Column(name="state_id")
	public int getStateId() {
		return stateId;
	}

	public void setStateId(int stateId) {
		this.stateId = stateId;
	}

	@Column(name="state")
	public String getStateName() {
		return stateName;
	}

	public void setStateName(String stateName) {
		this.stateName = stateName;
	}
	
	
	
}
