package net.unirfp.foodbook.restcontroller;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import net.unirfp.foodbook.modelo.javabean.Plato;
import net.unirfp.foodbook.modelo.repository.PlatoRepository;

@RestController
@RequestMapping("/platos")
public class PlatoController {

	private final PlatoRepository platoRepository;

	public PlatoController(PlatoRepository platoRepository) {
		this.platoRepository = platoRepository;
	}

	@GetMapping
	public List<Plato> listar() {
		return platoRepository.findAll();
	}
}