package net.decode.hrmsback.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import net.decode.hrmsback.dao.TypeDAO;
import net.decode.hrmsback.dto.Type;

@Repository("typeDAO")
public class CategoryDAOImpl implements TypeDAO {
	
	private static List<Type> types = new ArrayList<>();
	
	static {
		Type type = new Type();
		
		type.setId(1);
		type.setName("HR");
		
		types.add(type);
		
		type.setId(2);
		type.setName("HR1");
		
		types.add(type);
		
		type.setId(3);
		type.setName("HR2");
		
		types.add(type);
	}
	
	@Override
	public List<Type> list() {
		// TODO Auto-generated method stub
		return types;
	}

}
