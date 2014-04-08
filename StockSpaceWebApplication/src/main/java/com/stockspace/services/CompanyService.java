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
	public List<Company> getAllCompany() {
		// TODO Auto-generated method stub
		return companyMapper.getAllCompany();
	}

	public int saveCompany(Company company) {
		// TODO Auto-generated method stub
		return companyMapper.saveCompany(company);
	}


	public int updtCompany(Company company) {
		// TODO Auto-generated method stub
		return companyMapper.updtCompany(company);
	}

	public Company edtCompany(int companyId) {
		// TODO Auto-generated method stub
		return companyMapper.edtCompany(companyId);
	}

	public int actCompany(int companyId) {
		// TODO Auto-generated method stub
		return companyMapper.actCompany(companyId);
	}

	public int deactCompany(int companyId) {
		// TODO Auto-generated method stub
		return companyMapper.deactCompany(companyId);
	}



}
