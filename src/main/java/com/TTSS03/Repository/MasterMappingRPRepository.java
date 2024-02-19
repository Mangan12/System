package com.TTSS03.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.TTSS03.Entity.MasterMappingOS;
import com.TTSS03.Entity.MasterMappingRP;

public interface MasterMappingRPRepository extends JpaRepository<MasterMappingRP, Long> {
	
	

	@Query("SELECT t FROM MasterMappingRP t WHERE t.trainingid = :trainingid AND t.venueid = :venueid AND t.rptreasuryid = :rptreasuryid")
	MasterMappingRP findByTrainingIdAndVenueIdAndCCTreasuryId(@Param("trainingid") String trainingid, @Param("venueid") String venueid, @Param("rptreasuryid") String rptreasuryid);

	
	@Modifying
	@Query("UPDATE MasterMappingRP t SET t.status = 'Inactive' WHERE t.trainingid = :trainingid AND t.venueid = :venueid AND t.rptreasuryid = :rptreasuryid")
	void deactivateStatus(@Param("trainingid") String trainingid, @Param("venueid") String venueid, @Param("rptreasuryid") String rptreasuryid);


	@Query("SELECT ss FROM MasterMappingRP ss WHERE ss.status = 'Active'")
	List<MasterMappingRP> findBystatus();
}
