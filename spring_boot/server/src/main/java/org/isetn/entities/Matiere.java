package org.isetn.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Matiere {

	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long code;
	private String nom;
	private int coef;
	private int nbHeures;
	
	@ManyToOne
    private Classe classe;
	
	
	/*
	 * codeMat
	 * intitulé
	 * nomMat
	 * nbrHs
	 * coef
	 * classe : manytomany
	*/
}
