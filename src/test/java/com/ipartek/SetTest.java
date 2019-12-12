package com.ipartek;

import static org.junit.Assert.*;

import java.util.HashSet;

import org.junit.Test;

public class SetTest {

	@Test
	public void test() {
		assertTrue(2 == 2);
		assertEquals(2, 2);
		assertNull(null);
		
		HashSet<String> paises = new HashSet<String>();
		assertNotNull(paises);
		
		paises.add("eh");
		paises.add("ct");
		paises.add("es");
		paises.add("fr");
		
		assertEquals("Mensaje Personalizado por si Falla", 4, paises.size());
		
		paises.add("eh");
		paises.add("ct");
		paises.add("es");
		paises.add("fr");
		
		assertEquals("Mensaje Personalizado no se aceptan Duplicados", 4, paises.size());
	}

}
