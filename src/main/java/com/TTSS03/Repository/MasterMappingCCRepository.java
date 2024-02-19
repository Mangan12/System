package com.TTSS03.Repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.TTSS03.Entity.MasterMappingCC;

public interface MasterMappingCCRepository extends JpaRepository<MasterMappingCC, Long> {
	
//	@Query("SELECT c FROM MasterMappingCC c WHERE c.cctreasuryid = :cctreasuryid and c.trainingid = :trainingid and c.venueid = :venueid")
//	MasterMappingCC findByTreasuryIdTrainingIdVenueid(@Param("cctreasuryid") String cctreasuryid, @Param("trainingid") String trainingid, @Param("venueid") String venueid);

	
	
	@Query("SELECT t FROM MasterMappingCC t WHERE t.trainingid = :trainingid AND t.venueid = :venueid AND t.cctreasuryid = :cctreasuryid")
	MasterMappingCC findByTrainingIdAndVenueIdAndCCTreasuryId(@Param("trainingid") String trainingid, @Param("venueid") String venueid, @Param("cctreasuryid") String cctreasuryid);

	
	@Modifying
	@Query("UPDATE MasterMappingCC t SET t.status = 'Inactive' WHERE t.trainingid = :trainingid AND t.venueid = :venueid AND t.cctreasuryid = :cctreasuryid")
	void deactivateStatus(@Param("trainingid") String trainingid, @Param("venueid") String venueid, @Param("cctreasuryid") String cctreasuryid);

	@Query("SELECT ss FROM MasterMappingCC ss WHERE ss.status = 'Active'")
	List<MasterMappingCC> findBystatus();
}
