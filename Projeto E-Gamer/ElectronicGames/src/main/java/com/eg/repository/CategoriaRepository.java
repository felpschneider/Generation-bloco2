package com.eg.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.eg.model.Categoria;

public interface CategoriaRepository extends JpaRepository<Categoria, Long>{
	public List<Categoria> findAllByGeneroContainingIgnoreCase(String genero);
		
}
