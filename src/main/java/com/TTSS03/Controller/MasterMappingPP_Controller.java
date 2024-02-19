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

import com.TTSS03.Entity.MasterMappingPP;
import com.TTSS03.Service.MasterMappingPPService;
@RestController
@RequestMapping("/api")
public class MasterMappingPP_Controller {
	
	
	@Autowired
	MasterMappingPPService masterMappingPPServ;
	
	
	
	@PostMapping("/pp/create")
	
	public ResponseEntity<String>createOneCC(@RequestBody List<MasterMappingPP> mastermappingpp){
		masterMappingPPServ.saveOnePP(mastermappingpp);
		return ResponseEntity.ok("CC Created Successful ! ! !");
		
	}
	
	@GetMapping("/getall/pp")
	public ResponseEntity<List<MasterMappingPP>>getAllCC(@RequestParam String trainingid,@RequestParam String venueid){
		List<MasterMappingPP> allCC = masterMappingPPServ.getAllPp();
		
		return ResponseEntity.ok(allCC);
	}

	
	@PutMapping("/pp/deactivate")
	public ResponseEntity<String>deactivateStatus(@RequestParam String trainingid,@RequestParam String venueid,@RequestParam String cctreasuryid){
		masterMappingPPServ.makeStatusInactive(trainingid, venueid, cctreasuryid);
		
		return ResponseEntity.ok("CC De-Activate Successfully ! ! !");
	}
	

}
