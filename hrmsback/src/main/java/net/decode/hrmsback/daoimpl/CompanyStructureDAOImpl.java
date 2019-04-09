package net.decode.hrmsback.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import net.decode.hrmsback.dao.CompanyStructureDAO;
import net.decode.hrmsback.dto.CompanyStructure;

@Repository("companyStructureDAO")
@Transactional
public class CompanyStructureDAOImpl implements CompanyStructureDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public CompanyStructure get(int CompanyStructureId) {
		try {
			return sessionFactory.getCurrentSession().get(CompanyStructure.class, Integer.valueOf(CompanyStructureId));
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return null;
	}

	@Override
	public List<CompanyStructure> list() {
		return sessionFactory.getCurrentSession().createQuery("From CompanyStructure", CompanyStructure.class).getResultList();
	}

	@Override
	public boolean add(CompanyStructure companyStructure) {
		try {
			sessionFactory.getCurrentSession().persist(companyStructure);
			return true;
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean update(CompanyStructure companyStructure) {
		try {
			sessionFactory.getCurrentSession().update(companyStructure);
			return true;
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean delete(CompanyStructure companyStructure) {
		try {
			companyStructure.setActive(false);
			return this.update(companyStructure);
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return false;
	}

	@Override
	public List<CompanyStructure> listActiveCompanyStrcture() {
		String selectActiveCompanyStructure = "FROM CompanyStructure WHERE active = :active";
		return sessionFactory.getCurrentSession().createQuery(selectActiveCompanyStructure, CompanyStructure.class).setParameter("active", true).getResultList();
	}

	@Override
	public List<CompanyStructure> listActiveCompanyStructureByType(int typeId) {
		String selectActiveCompanyStructureByType = "FROM CompanyStructure WHERE active = :active AND typeId = :typeId";
		return sessionFactory.getCurrentSession().createQuery(selectActiveCompanyStructureByType, CompanyStructure.class).setParameter("active", true).setParameter("typeId", typeId).getResultList();
	}

	@Override
	public List<CompanyStructure> getLatestActiveProducts(int count) {
		return sessionFactory.getCurrentSession().createQuery("FROM CompanyStructure WHERE active = :active ORDER BY id", CompanyStructure.class).setParameter("active", true).setFirstResult(0).setMaxResults(count).getResultList();
	}

}
