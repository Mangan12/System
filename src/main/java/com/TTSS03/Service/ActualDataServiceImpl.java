package com.TTSS03.Service;

import java.io.ByteArrayInputStream;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

//import com.opencsv.CSVReader;
//import com.opencsv.exceptions.CsvValidationException;
// 

 

import com.TTSS03.Entity.ActualData;
import com.TTSS03.Repository.ActualDataRepository;
import com.TTSS03.Repository.SessionMasterRepository;
import com.TTSS03.utill.ExcelHelper;

 
@Service
public class ActualDataServiceImpl implements ActualDataService {
	
	@Autowired
	ActualDataRepository actualDataRepo;
	
	
	@Autowired
	private SessionMasterRepository sessionMasterRepository;
//	@Override
//	public ActualData saveOneData(ActualData actualData) {
//		return actualDataRepo.save(actualData);
//	}
	
	public ActualData saveOneData(ActualData actualData) {
		try {
			if (actualData.getRefplannerid() == null || actualData.getRefplannerid().isEmpty()) {
				// Generate a random code for 'is' field
				String lastGeneratedCode = getLastGeneratedCode();
				System.out.println(lastGeneratedCode);
				String sessionCode = sessionMasterRepository.findActiveAndCurrentSessionCode();
				if (sessionCode != null && !sessionCode.isEmpty()) {
					String nextCode = sessionCode + "/" + (Integer.parseInt(lastGeneratedCode) + 1);
					System.out.println(nextCode);
					actualData.setRefplannerid(nextCode);
				} else {
					// Handle case where session code is null or empty
					throw new RuntimeException("Session code is null or empty");
				}
			}
			return actualDataRepo.save(actualData);
		} catch (Exception e) {
			throw new RuntimeException("Failed to save Actual Master: " + e.getMessage());
		}
 
	}
 
	public String getLastGeneratedCode() {
		String code = actualDataRepo.findHighestNumberAsString();
		System.out.println(code);
		return code != null ? code : "000"; // Return the retrieved code or "000" if null
	}
	@Override
	public List<ActualData>getDataById(String refplannerid) {
		// TODO Auto-generated method stub
		return actualDataRepo.findByStatusActualData(refplannerid);
	}

	@Override
	public List<ActualData> getAll() {
		return actualDataRepo.findActiveData();
	}
	
	@Override
	public List<ActualData> findByYearAndMonth(String tyear, String tmonth) {
		// TODO Auto-generated method stub
		return actualDataRepo.findActualDatabyYearAndMonth(tyear, tmonth);
	}

	@Override
	@Transactional
    public ActualData updateOne(String refplannerid, ActualData actualData) {
        int updatedRows = actualDataRepo.updateActualData(
                refplannerid,
                actualData 
        );

        if (updatedRows > 0) {
            // Fetch and return the updated ActualData
             Optional<ActualData> findById = actualDataRepo.findByRefId(refplannerid);
            return findById.orElse(null);
        } else {
            // Handle update failure, return null or throw an exception
            return null;
        }
    }

	@Override
	@Transactional
	public void deactivateTraining(String refplannerid) {
		// TODO Auto-generated method stub
		actualDataRepo.deactivateTraining(refplannerid);
	}
	
//	   public void processExcelFile(MultipartFile file) throws IOException {
//	        List<ActualData> entities = ExcelHelper.readExcel(file.getInputStream());
//	        // Save entities to the database
//	        actualDataRepo.saveAll(entities);
//	    }
	
//	 public void save(MultipartFile file) {
//		    try {
//		      List<ActualData> tutorials = ExcelHelper.excelToTutorials(file.getInputStream());
//		      actualDataRepo.saveAll(tutorials);
//		    } catch (IOException e) {
//		      throw new RuntimeException("fail to store excel data: " + e.getMessage());
//		    }
//		  }
//
//		  public ByteArrayInputStream load() {
//		    List<ActualData> tutorials = actualDataRepo.findAll();
//
//		    ByteArrayInputStream in = ExcelHelper.tutorialsToExcel(tutorials);
//		    return in;
//		  }
//
//		  public List<ActualData> getAllTutorials() {
//		    return actualDataRepo.findAll();
//		  }
		}