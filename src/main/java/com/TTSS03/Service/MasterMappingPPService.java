package com.TTSS03.Service;

import java.util.List;

import com.TTSS03.Entity.MasterMappingPP;

public interface MasterMappingPPService {
	
	void saveOnePP(List<MasterMappingPP> mastermappingpp);

	List<MasterMappingPP>getAllPp();
		
		
		void makeStatusInactive(String trainngid,String venueid,String treasuryid);


}
