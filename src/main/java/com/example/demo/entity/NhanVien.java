package com.example.demo.entity;

import java.io.Serializable;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;


import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@SuppressWarnings("serial")
@Data
@Entity 
@Table(name = "NhanVien")
public class NhanVien implements Serializable {
	@Id
	String manv;
	String hoten;
	@NotBlank(message= "NotBlank.nv.email")
	@Email(message = "{Email.nv.email}")
	String email;
	@NotNull(message= "{NotBlank.nv.pass}")
	String pass;
    String sdt;
	String diachi;
	boolean admin;
	@JsonIgnore
	@OneToMany(mappedBy = "nhanVien")
	List<DonHang> donhang;



}
