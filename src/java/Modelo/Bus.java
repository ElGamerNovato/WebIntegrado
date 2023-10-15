/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author jhordancotrina
 */
public class Bus {
    private String busMar,busModel,busColor,nmbrPlate, condition, photo;
    private int idBus, afMaxim, afMin;
    private boolean status;

    public int getIdBus() {
        return idBus;
    }

    public void setIdBus(int idBus) {
        this.idBus = idBus;
    }

    
    public String getBusMar() {
        return busMar;
    }

    public void setBusMar(String busMar) {
        this.busMar = busMar;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getBusModel() {
        return busModel;
    }

    public void setBusModel(String busModel) {
        this.busModel = busModel;
    }

    public String getBusColor() {
        return busColor;
    }

    public void setBusColor(String busColor) {
        this.busColor = busColor;
    }

    public String getNmbrPlate() {
        return nmbrPlate;
    }

    public void setNmbrPlate(String nmbrPlate) {
        this.nmbrPlate = nmbrPlate;
    }

    public String getCondition() {
        return condition;
    }

    public void setCondition(String condition) {
        this.condition = condition;
    }

    public int getAfMaxim() {
        return afMaxim;
    }

    public void setAfMaxim(int afMaxim) {
        this.afMaxim = afMaxim;
    }

    public int getAfMin() {
        return afMin;
    }

    public void setAfMin(int afMin) {
        this.afMin = afMin;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
   
    
}
