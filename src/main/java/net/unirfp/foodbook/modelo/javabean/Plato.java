package net.unirfp.foodbook.modelo.javabean;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "PLATO")
public class Plato {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idPlato;
	
	@Column(nullable = false, length = 150)
	private String nombre;
	
	@Column(length = 500)
	private String imagenUrl;;
	
	private String descripcion;
	
	@Column(nullable = false)
	private Integer tiempoPreparacion;
	
	private String elaboracion;
	
	public Long getIdPlato() {
		return idPlato;
	}

	public void setIdPlato(Long idPlato) {
		this.idPlato = idPlato;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getImagenUrl() {
		return imagenUrl;
	}

	public void setImagenUrl(String imagenUrl) {
		this.imagenUrl = imagenUrl;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public Integer getTiempoPreparacion() {
		return tiempoPreparacion;
	}

	public void setTiempoPreparacion(Integer tiempoPreparacion) {
		this.tiempoPreparacion = tiempoPreparacion;
	}

	public String getElaboracion() {
		return elaboracion;
	}

	public void setElaboracion(String elaboracion) {
		this.elaboracion = elaboracion;
	}

	public Plato() {
		super();
	}

}
