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
import lombok.Data;

@SuppressWarnings("serial")
@Data
@Entity 
@Table(name = "khach_hang")
public class KhachHang implements Serializable{
	@Id
	Integer makh;
	String TenKH;
	
	@NotBlank(message= "{NotBlank.sv.email}")
	@Email(message = "{Email.sv.email}")
	String email;
	String pass;
	String sdt;
	@JsonIgnore
	@OneToMany(mappedBy = "khachhang")
	List<DiaChi> diachi;
	@Override
    public String toString() {
        return "KhachHang{" +
                "maKH=" + makh +
                ", tenKH='" + TenKH + '\'' +
                '}';
    }
	
}
