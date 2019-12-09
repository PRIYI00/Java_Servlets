package com.ipartek.modelo.pojos;

public class Perro {
	
	private int id;
	private String nombre;
	private String foto;
	
	public Perro() {
		this.id = 0;
		this.nombre = "";
		this.foto = "https://www.google.es/url?sa=i&url=https%3A%2F%2Fwww.ngenespanol.com%2Fanimales%2Fresistirse-mirada-tierna-perros%2F&psig=AOvVaw3_J0G2dcq1wtF6QwW0-ZJh&ust=1575618038251000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCMCCm5GBnuYCFQAAAAAdAAAAABAG";
	}
	
	public Perro(String nombre) {
		this.id = 0;
		this.nombre = nombre;
		this.foto = "https://www.google.es/url?sa=i&url=https%3A%2F%2Fwww.ngenespanol.com%2Fanimales%2Fresistirse-mirada-tierna-perros%2F&psig=AOvVaw3_J0G2dcq1wtF6QwW0-ZJh&ust=1575618038251000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCMCCm5GBnuYCFQAAAAAdAAAAABAG";
	}

	public Perro(int id, String nombre) {
		this.id = id;
		this.nombre = nombre;
	}
	
	public Perro(int id, String nombre, String foto) {
		this.id = id;
		this.nombre = nombre;
		this.foto = foto;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}

	@Override
	public String toString() {
		return "Perro [id=" + id + ", nombre=" + nombre + ", foto=" + foto + "]";
	}
	
}
