package com.procticalogin.DAO;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.procticalogin.model.TbUsuariop;

public class UsuarioDao {
	
	public  List<TbUsuariop>  ingresoUsuario(TbUsuariop usu){
		List<TbUsuariop> usuario= new ArrayList();
		
		EntityManager em;
		EntityManagerFactory emf;
		emf = Persistence.createEntityManagerFactory("procticalogin");
		em = emf.createEntityManager();
		
		try {
			
			em.getTransaction().begin();
			usuario = em.createQuery("from TbUsuariop as u where  u.usuario = '"+usu.getUsuario()+"' and u.contrasenia = '"+usu.getContrasenia()+"'").getResultList();
			
			em.getTransaction().commit();
			
		} catch (Exception e) {
			// TODO: handle exception
			
			System.out.println(e+"error");
		}
		
		
		
		return usuario;
		
		
	}
	
	

	
	
	
}
