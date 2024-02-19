package com.TTSS03.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.TTSS03.Entity.MasterMappingPP;

public interface MasterMappingPPRepository extends JpaRepository<MasterMappingPP, Long> {
	
	
	

	@Query("SELECT t FROM MasterMappingPP t WHERE t.trainingid = :trainingid AND t.venueid = :venueid AND t.pptreasuryid = :pptreasuryid")
	MasterMappingPP findByTrainingIdAndVenueIdAndCCTreasuryId(@Param("trainingid") String trainingid, @Param("venueid") String venueid, @Param("pptreasuryid") String pptreasuryid);

	
	@Modifying
	@Query("UPDATE MasterMappingPP t SET t.status = 'Inactive' WHERE t.trainingid = :trainingid AND t.venueid = :venueid AND t.pptreasuryid = :pptreasuryid")
	void deactivateStatus(@Param("trainingid") String trainingid, @Param("venueid") String venueid, @Param("pptreasuryid") String pptreasuryid);

	@Query("SELECT ss FROM MasterMappingPP ss WHERE ss.status = 'Active'")
	List<MasterMappingPP> findBystatus();

}
