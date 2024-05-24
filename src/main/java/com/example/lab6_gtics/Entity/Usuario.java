package com.example.lab6_gtics.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "usuario")
public class Usuario {
    @Id
    @Column(name = "idUsuario", nullable = false)
    private Integer id;

    @Column(name = "Nombre", nullable = false)
    private Integer nombre;
    @Column(name = "Apellido", nullable = false)
    private Integer apellido;
    @Column(name = "Contrasena", nullable = false)
    private Integer contrasena;
    @Column(name = "UsuarioLogin", nullable = false)
    private Integer usuariologin;
}
