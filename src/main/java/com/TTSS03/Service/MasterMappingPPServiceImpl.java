package com.TTSS03.Service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.TTSS03.Entity.MasterMappingPP;
import com.TTSS03.Repository.MasterMappingPPRepository;

@Service
public class MasterMappingPPServiceImpl implements MasterMappingPPService {
	
	
	@Autowired
	MasterMappingPPRepository masterMappingppRepo;

	@Override
	public void saveOnePP(List<MasterMappingPP> mastermappingpp) {
		// TODO Auto-generated method stub
		masterMappingppRepo.saveAll(mastermappingpp);
	}

	@Override
	public List<MasterMappingPP> getAllPp() {
		// TODO Auto-generated method stub
		return masterMappingppRepo.findBystatus();
	}

	@Override
	@Transactional
	public void makeStatusInactive(String trainngid, String venueid, String treasuryid) {
		// TODO Auto-generated method stub
		masterMappingppRepo.deactivateStatus(trainngid, venueid, treasuryid);
	}

}
