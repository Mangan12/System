package com.TTSS03.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="tmappingforacc")
public class MasterMappingACC {
	
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	 private long slno;

	    private String trainingid;
	    private String trainingname;
	    private String venueid;
	    private String venuename;
	    
	    private String acctreasuryid;
	    private String accname;
	    private String accdesignation;
	    private String accdistrict;
	    private String accmandal;
	    private String accemail;
	    private String accmobile;
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
		public String getAcctreasuryid() {
			return acctreasuryid;
		}
		public void setAcctreasuryid(String acctreasuryid) {
			this.acctreasuryid = acctreasuryid;
		}
		public String getAccname() {
			return accname;
		}
		public void setAccname(String accname) {
			this.accname = accname;
		}
		public String getAccdesignation() {
			return accdesignation;
		}
		public void setAccdesignation(String accdesignation) {
			this.accdesignation = accdesignation;
		}
		public String getAccdistrict() {
			return accdistrict;
		}
		public void setAccdistrict(String accdistrict) {
			this.accdistrict = accdistrict;
		}
		public String getAccmandal() {
			return accmandal;
		}
		public void setAccmandal(String accmandal) {
			this.accmandal = accmandal;
		}
		public String getAccemail() {
			return accemail;
		}
		public void setAccemail(String accemail) {
			this.accemail = accemail;
		}
		public String getAccmobile() {
			return accmobile;
		}
		public void setAccmobile(String accmobile) {
			this.accmobile = accmobile;
		}
	    

}
