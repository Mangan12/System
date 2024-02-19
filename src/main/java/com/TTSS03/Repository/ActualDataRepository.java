package com.TTSS03.Repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.TTSS03.Entity.ActualData;
import com.TTSS03.Entity.AgencyMaster;

public interface ActualDataRepository extends JpaRepository<ActualData, Long> {
	
	@Query("SELECT c FROM ActualData c WHERE c.refplannerid=:refplannerid")
	List<ActualData> findByStatusActualData(@Param("refplannerid") String refplannerid);
	
    @Query(value="SELECT COALESCE(MAX(CAST(SUBSTRING_INDEX(e.refplannerid, '/', -1) AS UNSIGNED)), MAX(CAST(e.refplannerid AS UNSIGNED)), NULL) FROM academicactualtable e",nativeQuery = true)
	  		String findHighestNumberAsString();
    
    @Modifying
	@Query("UPDATE ActualData a SET " +
	        "a.tmonth = COALESCE(:#{#actualData.tmonth}, a.tmonth), " +
	        "a.tyear = COALESCE(:#{#actualData.tyear}, a.tyear), " +
	        "a.trainingregstartdt = COALESCE(:#{#actualData.trainingregstartdt}, a.trainingregstartdt), " +
	        "a.trainingregenddt = COALESCE(:#{#actualData.trainingregenddt}, a.trainingregenddt), " +
	        "a.tagency = COALESCE(:#{#actualData.tagency}, a.tagency), " +
	        "a.tname = COALESCE(:#{#actualData.tname}, a.tname), " +
	        "a.tsubject = COALESCE(:#{#actualData.tsubject}, a.tsubject), " +
	        "a.tcategory = COALESCE(:#{#actualData.tcategory}, a.tcategory), " +
	        "a.ttargetgroup = COALESCE(:#{#actualData.ttargetgroup}, a.ttargetgroup), " +
	        "a.tspell = COALESCE(:#{#actualData.tspell}, a.tspell), " +
	        "a.preferdlocation = COALESCE(:#{#actualData.preferdlocation}, a.preferdlocation), " +
	        "a.tdescription = COALESCE(:#{#actualData.tdescription}, a.tdescription), " +
	        "a.tgrade = COALESCE(:#{#actualData.tgrade}, a.tgrade), " +
	        "a.numberofstakeholder = COALESCE(:#{#actualData.numberofstakeholder}, a.numberofstakeholder), " +
	        "a.numberdayneeded = COALESCE(:#{#actualData.numberdayneeded}, a.numberdayneeded), " +
	        "a.tmode = COALESCE(:#{#actualData.tmode}, a.tmode), " +
	        "a.thoursperday = COALESCE(:#{#actualData.thoursperday}, a.thoursperday), " +
	        "a.totalhours = COALESCE(:#{#actualData.totalhours}, a.totalhours), " +
	        "a.tstatus = COALESCE(:#{#actualData.tstatus}, a.tstatus) " +
	        "WHERE a.refplannerid = :refplannerid")
		int updateActualData(@Param("refplannerid") String refplannerid, @Param("actualData") ActualData actualData);
	
//	
//	    @Modifying
//	    @Query("UPDATE ActualData a SET " +
//	            "a.tmonth = :tmonth, " +
//	            "a.tyear = :tyear, " +
//	            "a.trainingregstartdt = :trainingregstartdt, " +
//	            "a.trainingregenddt = :trainingregenddt, " +
//	            "a.tagency = :tagency, " +
//	            "a.tname = :tname, " +
//	            "a.tsubject = :tsubject, " +
//	            "a.tcategory = :tcategory, " +
//	            "a.ttargetgroup = :ttargetgroup, " +
//	            "a.preferdlocation = :preferdlocation, " +
//	            "a.tdescription = :tdescription, " +
//	            "a.tgrade = :tgrade, " +
//	            "a.numberofstakeholder = :numberofstakeholder, " +
//	            "a.numberdayneeded = :numberdayneeded, " +
//	            "a.tmode = :tmode, " +
//	            "a.thoursperday = :thoursperday, " +
//	            "a.totalhours = :totalhours, " +
//	            "a.tstatus = :tstatus " +
//	            "WHERE a.refplannerid = :refplannerid")
//	    int updateActualData(
//	            @Param("refplannerid") String refplannerid,
//	            @Param("tmonth") String tmonth,
//	            @Param("tyear") String tyear,
//	            @Param("trainingregstartdt") String trainingregstartdt,
//	            @Param("trainingregenddt") String trainingregenddt,
//	            @Param("tagency") String tagency,
//	            @Param("tname") String tname,
//	            @Param("tsubject") String tsubject,
//	            @Param("tcategory") String tcategory,
//	            @Param("ttargetgroup") String ttargetgroup,
//	            @Param("preferdlocation") String preferdlocation,
//	            @Param("tdescription") String tdescription,
//	            @Param("tgrade") String tgradess,
//	            @Param("numberofstakeholder") String numberofstakeholder,
//	            @Param("numberdayneeded") String numberdayneeded,
//	            @Param("tmode") String tmode,
//	            @Param("thoursperday") String thoursperday,
//	            @Param("totalhours") String totalhours,
//	            @Param("tstatus") String tstatus);
//	    
	    
	    @Modifying
	    @Query("UPDATE ActualData e SET e.tstatus = 'Inactive' WHERE e.refplannerid = :refplannerid")
	    void deactivateTraining(@Param("refplannerid") String refplannerid);
	    

	    @Query("SELECT t FROM ActualData t WHERE t.tstatus != 'Inactive'")
	    List<ActualData> findActiveData();
	    
	    @Query("SELECT t FROM ActualData t WHERE t.tyear= :tyear and t.tmonth=:tmonth")
	    List<ActualData> findActualDatabyYearAndMonth(@Param("tyear")String tyear,@Param("tmonth")String tmonth);



	    @Query("SELECT ad FROM ActualData ad WHERE ad.refplannerid = :refplannerid")
	    Optional<ActualData> findByRefId(@Param("refplannerid") String refplannerid);
	
	    		  
	}
	

	
