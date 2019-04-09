package net.decode.hrmsback.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.decode.hrmsback.dao.TypeDAO;
import net.decode.hrmsback.dto.Type;

public class TypeTestCase {
	private static AnnotationConfigApplicationContext context;
	
	private static TypeDAO typeDAO;
	
	private Type type;
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("net.decode.hrmsback");
		context.refresh();
		
		typeDAO = (TypeDAO)context.getBean("typeDAO");
	}
	
	/*
	 * @Test public void testAddType() { type = new Type();
	 * 
	 * type.setName("Professional");
	 * 
	 * assertEquals("Successfully added a type inside the table!", true,
	 * typeDAO.add(type)); }
	 */
	
	/*
	 * @Test public void testGetType() { type = typeDAO.get(2);
	 * 
	 * assertEquals("Successfully fetched a single type for the table!",
	 * "Professional", type.getName()); }
	 */
	
	/*
	 * @Test public void testUpdateType() { type = typeDAO.get(2);
	 * 
	 * type.setName("HR1");
	 * 
	 * assertEquals("Successfully updated a single type in the table!", true,
	 * typeDAO.update(type)); }
	 */
	
	@Test
	public void testDeleteType() {
		type = typeDAO.get(2);
		
		assertEquals("Successfully deleted a single type in the table!", true, typeDAO.delete(type));
	}
	
	
}
