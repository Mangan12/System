package com.TTSS03.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.TTSS03.Entity.MasterMappingCC;
import com.TTSS03.Entity.MasterMappingOS;

public interface MasterMappingOSRepository extends JpaRepository<MasterMappingOS, Long> {
	
	
	@Query("SELECT t FROM MasterMappingOS t WHERE t.trainingid = :trainingid AND t.venueid = :venueid AND t.ostreasuryid = :ostreasuryid")
	MasterMappingOS findByTrainingIdAndVenueIdAndCCTreasuryId(@Param("trainingid") String trainingid, @Param("venueid") String venueid, @Param("ostreasuryid") String ostreasuryid);

	
	@Modifying
	@Query("UPDATE MasterMappingOS t SET t.status = 'Inactive' WHERE t.trainingid = :trainingid AND t.venueid = :venueid AND t.ostreasuryid = :ostreasuryid")
	void deactivateStatus(@Param("trainingid") String trainingid, @Param("venueid") String venueid, @Param("ostreasuryid") String ostreasuryid);


	@Query("SELECT ss FROM MasterMappingOS ss WHERE ss.status = 'Active'")
	List<MasterMappingOS> findBystatus();
}
