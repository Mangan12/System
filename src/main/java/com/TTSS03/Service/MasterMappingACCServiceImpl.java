package com.TTSS03.Service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.TTSS03.Entity.MasterMappingACC;
import com.TTSS03.Repository.MasterMappingACCRepository;

@Service
public class MasterMappingACCServiceImpl implements MasterMappingACCService {
	
	
	@Autowired
	MasterMappingACCRepository masterMappingAccRepo;

	@Override
	public void saveOneACC(List<MasterMappingACC> mastermappingacc) {
		// TODO Auto-generated method stub
		masterMappingAccRepo.saveAll(mastermappingacc);
		
	}

	@Override
	public List<MasterMappingACC> getAllACC() {
		// TODO Auto-generated method stub
		return masterMappingAccRepo.findBystatus();
	}

	@Override
	@Transactional
	public void makeStatusInactive(String trainngid, String venueid, String treasuryid) {
		// TODO Auto-generated method stub
		masterMappingAccRepo.deactivateStatus(trainngid, venueid, treasuryid);
		
	}
}
