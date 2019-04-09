package net.decode.hrmsback.dao;

import java.util.List;

import net.decode.hrmsback.dto.CompanyStructure;

public interface CompanyStructureDAO {
	
	CompanyStructure get(int CompanyStructureId);
	List<CompanyStructure> list();
	boolean add(CompanyStructure companyStructure);
	boolean update(CompanyStructure companyStructure);
	boolean delete(CompanyStructure companyStructure);
	
	List<CompanyStructure> listActiveCompanyStrcture();
	List<CompanyStructure> listActiveCompanyStructureByType(int typeId);
	List<CompanyStructure> getLatestActiveProducts(int count);

}
