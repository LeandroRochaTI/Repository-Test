package br.com.cartorio.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.cartorio.models.Cartorio;

@Repository
@Transactional
public class CartorioDAO {

	@PersistenceContext
	private EntityManager manager;
	
	public void gravar(Cartorio cartorio) {
			manager.persist(cartorio);
	}

	public List<Cartorio> listar() {
		return manager.createQuery("select c from Cartorio c", Cartorio.class)
				.getResultList();
	}
	
	
	public Cartorio find(Integer id) {
		return  manager.createQuery("select c from Cartorio c where c.id = :id" , Cartorio.class).setParameter("id", id).getSingleResult();
	}
	
	public void atualizar(Cartorio cartorio) {
		System.out.println("clase DAO "+ cartorio);
		manager.merge(cartorio);
	}

	public void remover(Integer cartorio) {
		manager.remove(manager.find(Cartorio.class, cartorio));
		
	}
}