package net.decode.hrmsback.dao;

import java.util.List;

import net.decode.hrmsback.dto.Type;

public interface TypeDAO {
	
	Type get(int id);
	List<Type> list();
	boolean add(Type type);
	boolean update(Type type);
	boolean delete(Type type);
}
