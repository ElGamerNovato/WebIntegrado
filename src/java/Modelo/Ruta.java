/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author crisc
 */
public class Ruta {
    private int idRuta;
    private String nombreRuta;
    private String descripcionRuta;
    private int distanciaRecorrido;
    private int tiempoRecorrido;
    private String observacionRuta;
    private int idHorario;
    private String turno;
    private boolean activo;
    public Ruta(){}

    public int getIdRuta() {
        return idRuta;
    }

    public void setIdRuta(int idRuta) {
        this.idRuta = idRuta;
    }

    public String getNombreRuta() {
        return nombreRuta;
    }

    public void setNombreRuta(String nombreRuta) {
        this.nombreRuta = nombreRuta;
    }

    public String getDescripcionRuta() {
        return descripcionRuta;
    }

    public void setDescripcionRuta(String descripcionRuta) {
        this.descripcionRuta = descripcionRuta;
    }

    public int getDistanciaRecorrido() {
        return distanciaRecorrido;
    }

    public void setDistanciaRecorrido(int distanciaRecorrido) {
        this.distanciaRecorrido = distanciaRecorrido;
    }

    public int getTiempoRecorrido() {
        return tiempoRecorrido;
    }

    public void setTiempoRecorrido(int tiempoRecorrido) {
        this.tiempoRecorrido = tiempoRecorrido;
    }

    public String getObservacionRuta() {
        return observacionRuta;
    }

    public void setObservacionesRuta(String observacionesRuta) {
        this.observacionRuta = observacionesRuta;
    }

    public String getTurno() {
        return turno;
    }

    public void setTurno(String turno) {
        this.turno = turno;
    }

    public int getIdHorario() {
        return idHorario;
    }

    public void setIdHorario(int idHorario) {
        this.idHorario = idHorario;
    }
    
    public boolean isActivo() {
        return activo;
    }

    public void setActivo(boolean activo) {
        this.activo = activo;
    }
    
    
}
