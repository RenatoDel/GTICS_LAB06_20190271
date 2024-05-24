package com.example.lab6_gtics.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "rol")
public class Rol {
    @Id
    @Column(name = "idRol", nullable = false)
    private Integer id;

    @Column(name = "rol", nullable = false)
    private Integer rol;
}
