package com.stockspace.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.stockspace.mappers.CompanyMapper;
import com.stockspace.models.Company;

@Component
public class CompanyService {

	@Autowired(required = true)
    private CompanyMapper companyMapper;
    
	public List<Company> findAllCompany() {
		
		return companyMapper.findAllCompany();
	}
	
}
