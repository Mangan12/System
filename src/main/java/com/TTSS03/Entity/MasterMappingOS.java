package com.TTSS03.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="tmappingforos")
public class MasterMappingOS {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	 private long slno;

	    private String trainingid;
	    private String trainingname;
	    private String venueid;
	    private String venuename;
	    
	    // Os fields
	    private String ostreasuryid;
	    private String osname;
	    private String osdesignation;
	    private String osdistrict;
	    private String osmandal;
	    private String osemail;
	    private String osmobile;
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
		public String getOstreasuryid() {
			return ostreasuryid;
		}
		public void setOstreasuryid(String ostreasuryid) {
			this.ostreasuryid = ostreasuryid;
		}
		public String getOsname() {
			return osname;
		}
		public void setOsname(String osname) {
			this.osname = osname;
		}
		public String getOsdesignation() {
			return osdesignation;
		}
		public void setOsdesignation(String osdesignation) {
			this.osdesignation = osdesignation;
		}
		public String getOsdistrict() {
			return osdistrict;
		}
		public void setOsdistrict(String osdistrict) {
			this.osdistrict = osdistrict;
		}
		public String getOsmandal() {
			return osmandal;
		}
		public void setOsmandal(String osmandal) {
			this.osmandal = osmandal;
		}
		public String getOsemail() {
			return osemail;
		}
		public void setOsemail(String osemail) {
			this.osemail = osemail;
		}
		public String getOsmobile() {
			return osmobile;
		}
		public void setOsmobile(String osmobile) {
			this.osmobile = osmobile;
		}
	    

}
