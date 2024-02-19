package com.TTSS03.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.TTSS03.Entity.MasterMappingACC;

public interface MasterMappingACCRepository extends JpaRepository<MasterMappingACC, Long> {
	

	@Query("SELECT t FROM MasterMappingACC t WHERE t.trainingid = :trainingid AND t.venueid = :venueid AND t.acctreasuryid = :acctreasuryid")
	MasterMappingACC findByTrainingIdAndVenueIdAndCCTreasuryId(@Param("trainingid") String trainingid, @Param("venueid") String venueid, @Param("acctreasuryid") String acctreasuryid);

	
	@Modifying
	@Query("UPDATE MasterMappingACC t SET t.status = 'Inactive' WHERE t.trainingid = :trainingid AND t.venueid = :venueid AND t.acctreasuryid = :acctreasuryid")
	void deactivateStatus(@Param("trainingid") String trainingid, @Param("venueid") String venueid, @Param("acctreasuryid") String acctreasuryid);

	@Query("SELECT ss FROM MasterMappingACC ss WHERE ss.status = 'Active'")
	List<MasterMappingACC> findBystatus();
}
