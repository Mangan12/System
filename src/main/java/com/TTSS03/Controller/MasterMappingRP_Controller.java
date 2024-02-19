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

import com.TTSS03.Entity.MasterMappingRP;
import com.TTSS03.Service.MasterMappingRPService;

@RestController
@RequestMapping("/api")
public class MasterMappingRP_Controller {
	
	
	@Autowired
	MasterMappingRPService masterMappingRpServ;
	
	
	
	@PostMapping("/rp/create")
	
	public ResponseEntity<String>createOneCC(@RequestBody List<MasterMappingRP> mastermappingrp){
		masterMappingRpServ.saveOneRP(mastermappingrp);
		return ResponseEntity.ok("RP Created Successful ! ! !");
		
	}
	
	@GetMapping("/getall/rp")
	public ResponseEntity<List<MasterMappingRP>>getAllRp(@RequestParam String trainingid,@RequestParam String venueid){
		List<MasterMappingRP> allRp = masterMappingRpServ.getAllRp();
		
		return ResponseEntity.ok(allRp);
	}
	
	@PutMapping("/rp/deactivate")
	public ResponseEntity<String>deactivateStatus(@RequestParam String trainingid,@RequestParam String venueid,@RequestParam String cctreasuryid){
		masterMappingRpServ.makeStatusInactive(trainingid, venueid, cctreasuryid);
		
		return ResponseEntity.ok("RP De-Activated Successfully ! ! !");
	}

}
