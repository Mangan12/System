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

import com.TTSS03.Entity.MasterMappingACC;
import com.TTSS03.Service.MasterMappingACCService;

@RestController
@RequestMapping("/api")
public class MasterMappingACC_Controller {
	
	@Autowired
	MasterMappingACCService masterMappingACCServ;
	
	
	
	@PostMapping("/acc/create")
	
	public ResponseEntity<String>createOneACC(@RequestBody List<MasterMappingACC> mastermappingacc){
		masterMappingACCServ.saveOneACC(mastermappingacc);
		return ResponseEntity.ok("ACC Created Successful ! ! !");
		
	}
	
	@GetMapping("/getall/acc")
	public ResponseEntity<List<MasterMappingACC>>getAllAcc(@RequestParam String trainingid,@RequestParam String venueid){
		List<MasterMappingACC> allACC = masterMappingACCServ.getAllACC();
		
		return ResponseEntity.ok(allACC);
	}
	
	@PutMapping("/acc/deactivate")
	public ResponseEntity<String>deactivateStatus(@RequestParam String trainingid,@RequestParam String venueid,@RequestParam String cctreasuryid){
		masterMappingACCServ.makeStatusInactive(trainingid, venueid, cctreasuryid);
		
		return ResponseEntity.ok("ACC De-Activate Successfully ! ! !");
	}

}
