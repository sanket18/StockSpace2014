package com.stockspace.mappers;

import java.util.List;

import com.stockspace.models.Company;

public interface CompanyMapper {

	public List<Company> findAllCompany();

	List<Company> getAllCompany();
	
	
	int saveCompany(Company company);


	int updtCompany(Company company);


	Company edtCompany(int companyId);


	int actCompany(int companyId);


	int deactCompany(int companyId);
	
}
