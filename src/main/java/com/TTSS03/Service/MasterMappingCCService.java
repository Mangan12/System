package com.TTSS03.Service;


import java.util.List;

import com.TTSS03.Entity.MasterMappingCC;

public interface MasterMappingCCService {
	
	
	void saveOneCC(List<MasterMappingCC> mastermappingcc);
	
	List<MasterMappingCC>getAllCC();
	
	MasterMappingCC getByTreasuryId(String trainngid,String venueid,String treasuryid);
	
	void makeStatusInactive(String trainngid,String venueid,String treasuryid);


}
