package com.TTSS03.Service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.TTSS03.Entity.MasterMappingOS;
import com.TTSS03.Repository.MasterMappingOSRepository;
@Service
public class MasterMappingOSServiceImpl implements MasterMappingOSService {
	
	
	
	

	@Autowired
	MasterMappingOSRepository masterMappingOSRepo;

	

	@Override
	public void saveOneOS(List<MasterMappingOS> mastermappingos) {
		// TODO Auto-generated method stub
		masterMappingOSRepo.saveAll(mastermappingos);
		
	}



	@Override
	public List<MasterMappingOS> getAllOs() {
		// TODO Auto-generated method stub
		return masterMappingOSRepo.findBystatus();
	}



	@Override
	@Transactional

	public void makeStatusInactive(String trainngid, String venueid, String treasuryid) {
		// TODO Auto-generated method stub
		masterMappingOSRepo.deactivateStatus(trainngid, venueid, treasuryid);
		
	}

}
