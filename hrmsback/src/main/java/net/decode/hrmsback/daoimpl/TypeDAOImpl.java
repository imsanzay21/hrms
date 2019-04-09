package net.decode.hrmsback.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import net.decode.hrmsback.dao.TypeDAO;
import net.decode.hrmsback.dto.Type;

@Repository("typeDAO")
@Transactional
public class TypeDAOImpl implements TypeDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	
	@Override
	public List<Type> list() {
		String selectedActiveType = "FROM Type WHERE active = :active";
		
		Query query = sessionFactory.getCurrentSession().createQuery(selectedActiveType);
		
		query.setParameter("active", true);
		return query.getResultList();
	}

	@Override
	public boolean add(Type type) {
		try {
			sessionFactory.getCurrentSession().persist(type);
			
			return true;
		}catch(Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public Type get(int id) {
		return sessionFactory.getCurrentSession().get(Type.class, Integer.valueOf(id));
	}

	@Override
	public boolean update(Type type) {
		try {
			sessionFactory.getCurrentSession().update(type);
			
			return true;
		}catch(Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean delete(Type type) {
		type.setActive(false);
		
		try {
			sessionFactory.getCurrentSession().update(type);
			return true;
		}catch(Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

}
