package com.TTSS03.Service;




import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.TTSS03.Entity.MasterMappingCC;
import com.TTSS03.Repository.MasterMappingCCRepository;


@Service
public class MasterMappingCCServiceImpl implements MasterMappingCCService {
	
	
	@Autowired
	MasterMappingCCRepository masterMappingCCRepo;

	@Override
	public void saveOneCC(List<MasterMappingCC> mastermappingcc) {
		// TODO Auto-generated method stub
		masterMappingCCRepo.saveAll(mastermappingcc);
		
	}

	@Override
	public List<MasterMappingCC> getAllCC() { 
		// TODO Auto-generated method stub
		return masterMappingCCRepo.findBystatus();
	}

	@Override
	public MasterMappingCC getByTreasuryId(String trainngid, String venueid, String treasuryid) {
		// TODO Auto-generated method stub
		return masterMappingCCRepo.findByTrainingIdAndVenueIdAndCCTreasuryId(trainngid, venueid, treasuryid);
	}

	@Override
	@Transactional
	public void makeStatusInactive(String trainngid, String venueid, String treasuryid) {
		// TODO Auto-generated method stub
		masterMappingCCRepo.deactivateStatus(trainngid, venueid, treasuryid);
		
	}

}
