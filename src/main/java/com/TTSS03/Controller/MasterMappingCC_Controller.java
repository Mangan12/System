package com.TTSS03.Controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.TTSS03.Entity.MasterMappingCC;
import com.TTSS03.Service.MasterMappingCCService;

@RestController
@RequestMapping("/api")
public class MasterMappingCC_Controller {
	
	@Autowired
	MasterMappingCCService masterMappingCCServ;
	
	
	
	@PostMapping("/cc/create")
	
	public ResponseEntity<String>createOneCC(@RequestBody List<MasterMappingCC> mastermappingcc){
		masterMappingCCServ.saveOneCC(mastermappingcc);
		return ResponseEntity.ok("CC Created Successful ! ! !");
		
	}
	
	@GetMapping("/getall/cc")
	public ResponseEntity<List<MasterMappingCC>>getAllCC(@RequestParam String trainingid,@RequestParam String venueid){
		List<MasterMappingCC> allCC = masterMappingCCServ.getAllCC();
		
		return ResponseEntity.ok(allCC);
	}

	@GetMapping("/cc/treasuryId")
	public ResponseEntity<MasterMappingCC>getCCBytreasuryId(@RequestParam String trainingid,@RequestParam String venueid,@RequestParam String cctreasuryid){
		MasterMappingCC byTreasuryId = masterMappingCCServ.getByTreasuryId(trainingid, venueid, cctreasuryid);
		
		return ResponseEntity.ok(byTreasuryId);
	}
	
	@PutMapping("/cc/deactivate")
	public ResponseEntity<String>deactivateStatus(@RequestParam String trainingid,@RequestParam String venueid,@RequestParam String cctreasuryid){
		masterMappingCCServ.makeStatusInactive(trainingid, venueid, cctreasuryid);
		
		return ResponseEntity.ok("CC De-Activate Successfully ! ! !");
	}
	
}
