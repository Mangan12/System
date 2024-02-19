package com.TTSS03.Service;

import java.util.List;

import com.TTSS03.Entity.MasterMappingACC;

public interface MasterMappingACCService {
	
	
	void saveOneACC(List<MasterMappingACC> mastermappingacc);
	

	List<MasterMappingACC>getAllACC();
	
	
	void makeStatusInactive(String trainngid,String venueid,String treasuryid);


}
 