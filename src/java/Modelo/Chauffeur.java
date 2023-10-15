/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import Dao.Conexion;

/**
 *
 * @author jhordancotrina
 */
public class Chauffeur{
    private String name,lastname;
    private int idChauf;
    private String dni, phone;
    private String nmbrLicense, photo;
    private String date, review;
    private boolean condition;
    

    public Chauffeur(){}

    public int getIdChauf() {
        return idChauf;
    }

    public void setIdChauf(int idChauf) {
        this.idChauf = idChauf;
    }

    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }


    public String getNmbrLicense() {
        return nmbrLicense;
    }

    public void setNmbrLicense(String nmbrLicense) {
        this.nmbrLicense = nmbrLicense;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getReview() {
        return review;
    }

    public void setReview(String review) {
        this.review = review;
    }

    public boolean isCondition() {
        return condition;
    }

    public void setCondition(boolean condition) {
        this.condition = condition;
    }
    
    
}
