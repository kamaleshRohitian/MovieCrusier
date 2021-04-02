package com.cognizant.moviecruiser.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Entity
@Table(name="favorites")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Favorites {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column
	private int us_id;
	
	@Column
	@JoinColumn(referencedColumnName = "mv_id")
	private int mv_id;

	public Favorites(int us_id, int mv_id) {
		super();
		this.us_id = us_id;
		this.mv_id = mv_id;
	}

}
