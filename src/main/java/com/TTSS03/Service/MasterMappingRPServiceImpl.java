package com.TTSS03.Service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.TTSS03.Entity.MasterMappingRP;
import com.TTSS03.Repository.MasterMappingRPRepository;
@Service
public class MasterMappingRPServiceImpl implements MasterMappingRPService {
	
	
	@Autowired
	MasterMappingRPRepository masterMappingRPRepo;


	@Override
	public void saveOneRP(List<MasterMappingRP> mastermappingrp) {
		// TODO Auto-generated method stub
		masterMappingRPRepo.saveAll(mastermappingrp);
		
	}


	@Override
	public List<MasterMappingRP> getAllRp() {
		// TODO Auto-generated method stub
		return masterMappingRPRepo.findBystatus();
	}


	@Override
	@Transactional
	public void makeStatusInactive(String trainngid, String venueid, String treasuryid) {
		// TODO Auto-generated method stub
		masterMappingRPRepo.deactivateStatus(trainngid, venueid, treasuryid);
		
	}

}
