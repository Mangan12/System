package com.TTSS03.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="tmappingforpp")
public class MasterMappingPP {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	 private long slno;

    private String trainingid;
    private String trainingname;
    private String venueid;
    private String venuename;
    
 // Pp fields
    private String pptreasuryid;
    private String ppname;
    private String ppdesignation;
    private String ppdistrict;
    private String ppmandal;
    private String ppemail;
    private String ppmobile;
    private String status="Active";
    
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public long getSlno() {
		return slno;
	}
	public void setSlno(long slno) {
		this.slno = slno;
	}
	public String getTrainingid() {
		return trainingid;
	}
	public void setTrainingid(String trainingid) {
		this.trainingid = trainingid;
	}
	public String getTrainingname() {
		return trainingname;
	}
	public void setTrainingname(String trainingname) {
		this.trainingname = trainingname;
	}
	public String getVenueid() {
		return venueid;
	}
	public void setVenueid(String venueid) {
		this.venueid = venueid;
	}
	public String getVenuename() {
		return venuename;
	}
	public void setVenuename(String venuename) {
		this.venuename = venuename;
	}
	public String getPptreasuryid() {
		return pptreasuryid;
	}
	public void setPptreasuryid(String pptreasuryid) {
		this.pptreasuryid = pptreasuryid;
	}
	public String getPpname() {
		return ppname;
	}
	public void setPpname(String ppname) {
		this.ppname = ppname;
	}
	public String getPpdesignation() {
		return ppdesignation;
	}
	public void setPpdesignation(String ppdesignation) {
		this.ppdesignation = ppdesignation;
	}
	public String getPpdistrict() {
		return ppdistrict;
	}
	public void setPpdistrict(String ppdistrict) {
		this.ppdistrict = ppdistrict;
	}
	public String getPpmandal() {
		return ppmandal;
	}
	public void setPpmandal(String ppmandal) {
		this.ppmandal = ppmandal;
	}
	public String getPpemail() {
		return ppemail;
	}
	public void setPpemail(String ppemail) {
		this.ppemail = ppemail;
	}
	public String getPpmobile() {
		return ppmobile;
	}
	public void setPpmobile(String ppmobile) {
		this.ppmobile = ppmobile;
	}   

}
