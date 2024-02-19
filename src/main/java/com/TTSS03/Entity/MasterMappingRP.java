package com.TTSS03.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="tmappingforrp")
public class MasterMappingRP {
	
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	 private long slno;

	    private String trainingid;
	    private String trainingname;
	    private String venueid;
	    private String venuename;
	    
	    
	    // Rp fields
	    private String rptreasuryid;
	    private String rpname;
	    private String rpdesignation;
	    private String rpdistrict;
	    private String rpmandal;
	    private String rpemail;
	    private String rpmobile;
	    
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
		public String getRptreasuryid() {
			return rptreasuryid;
		}
		public void setRptreasuryid(String rptreasuryid) {
			this.rptreasuryid = rptreasuryid;
		}
		public String getRpname() {
			return rpname;
		}
		public void setRpname(String rpname) {
			this.rpname = rpname;
		}
		public String getRpdesignation() {
			return rpdesignation;
		}
		public void setRpdesignation(String rpdesignation) {
			this.rpdesignation = rpdesignation;
		}
		public String getRpdistrict() {
			return rpdistrict;
		}
		public void setRpdistrict(String rpdistrict) {
			this.rpdistrict = rpdistrict;
		}
		public String getRpmandal() {
			return rpmandal;
		}
		public void setRpmandal(String rpmandal) {
			this.rpmandal = rpmandal;
		}
		public String getRpemail() {
			return rpemail;
		}
		public void setRpemail(String rpemail) {
			this.rpemail = rpemail;
		}
		public String getRpmobile() {
			return rpmobile;
		}
		public void setRpmobile(String rpmobile) {
			this.rpmobile = rpmobile;
		}
	    

}
