package com.example.demo.entity;


import java.io.Serializable;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.Data;

@SuppressWarnings("serial")
@Data
@Entity 
@Table(name = "DanhGia")
public class DanhGia implements Serializable{
	@Id
	String madanhgia;
	int sosao;
	String noidung;
	String img;
	@Temporal(TemporalType.DATE)
	@Column(name = "NgayDG")
	Date date = new Date();
	boolean like;
	@ManyToOne(cascade = CascadeType.PERSIST)
	@JoinColumn(name="CTDH")
	CTDonHang ctdh;
}
