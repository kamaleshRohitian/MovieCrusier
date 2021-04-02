package com.cognizant.moviecruiser.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name = "movie")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@EqualsAndHashCode
public class Movie {
	
	@Id
	@Column(name = "id")
	private int id;
	
	@Column(name = "title")
	private String title;
	
	@Column(name = "boxoffice")
	private String boxOffice;
	
	@Column(name = "active")
	private boolean active;
	
	@Column(name = "dateoflaunch")
	private Date dateOfLaunch;
	
	@Column(name = "genre")
	private String genre;
	
	@Column(name = "hasteaser")
	private boolean hasTeaser;
	

}
