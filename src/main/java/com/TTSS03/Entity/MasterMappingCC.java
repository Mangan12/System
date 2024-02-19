package com.TTSS03.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="tmappingforcc")
public class MasterMappingCC {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	 private long slno;

	    private String trainingid;
	    private String trainingname;
	    private String venueid;
	    private String venuename;
	    
	    private String cctreasuryid;
	    private String ccname;
	    private String ccdesignation;
	    private String ccdistrict;
	    private String ccmandal;
	    private String ccemail;
	    private String ccmobile;
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
		public String getCctreasuryid() {
			return cctreasuryid;
		}
		public void setCctreasuryid(String cctreasuryid) {
			this.cctreasuryid = cctreasuryid;
		}
		public String getCcname() {
			return ccname;
		}
		public void setCcname(String ccname) {
			this.ccname = ccname;
		}
		public String getCcdesignation() {
			return ccdesignation;
		}
		public void setCcdesignation(String ccdesignation) {
			this.ccdesignation = ccdesignation;
		}
		public String getCcdistrict() {
			return ccdistrict;
		}
		public void setCcdistrict(String ccdistrict) {
			this.ccdistrict = ccdistrict;
		}
		public String getCcmandal() {
			return ccmandal;
		}
		public void setCcmandal(String ccmandal) {
			this.ccmandal = ccmandal;
		}
		public String getCcemail() {
			return ccemail;
		}
		public void setCcemail(String ccemail) {
			this.ccemail = ccemail;
		}
		public String getCcmobile() {
			return ccmobile;
		}
		public void setCcmobile(String ccmobile) {
			this.ccmobile = ccmobile;
		}

}
