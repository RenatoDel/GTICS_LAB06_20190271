package com.example.lab6_gtics.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import java.util.Date;

@Entity
@Table(name = "reserva")
public class Reserva {
    @Id
    @Column(name = "idReserva", nullable = false)
    private Integer id;

    @Column(name = "FechaInicio", nullable = false)
    private Date fechainicio;
}
