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

import com.TTSS03.Entity.MasterMappingOS;
import com.TTSS03.Service.MasterMappingOSService;

@RestController
@RequestMapping("/api")
public class MasterMappingOS_Controller {
	
	
	@Autowired
	MasterMappingOSService masterMappingOsServ;
	
	
	
	@PostMapping("/os/create")
	
	public ResponseEntity<String>createOneCC(@RequestBody List<MasterMappingOS> mastermappingos){
		masterMappingOsServ.saveOneOS(mastermappingos);
		return ResponseEntity.ok("OS Created Successful ! ! !");
		
	}
	
	@GetMapping("/getall/os")
	public ResponseEntity<List<MasterMappingOS>>getAllOs(@RequestParam String trainingid,@RequestParam String venueid){
		List<MasterMappingOS> allOs = masterMappingOsServ.getAllOs();
		
		return ResponseEntity.ok(allOs);
	}
	
	@PutMapping("/os/deactivate")
	public ResponseEntity<String>deactivateStatus(@RequestParam String trainingid,@RequestParam String venueid,@RequestParam String cctreasuryid){
		masterMappingOsServ.makeStatusInactive(trainingid, venueid, cctreasuryid);
		
		return ResponseEntity.ok("OS De-Activate Successfully ! ! !");
	}

	
	


}
