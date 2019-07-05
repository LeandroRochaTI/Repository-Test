package br.com.cartorio.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Cartorio {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int numero;
	
	private String nome;
	
	public int getNumero() {
		return numero;
	}
	public void setNumero(int id) {
		this.numero = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String titulo) {
		this.nome = titulo;
	}
	public String toString() {
		return "Cartorio Nome=" + nome +  " ID=" +numero;
	}

}
