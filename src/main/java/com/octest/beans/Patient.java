package com.octest.beans;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "Patient")
public class Patient {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer numeroPatient;

    @Column(nullable = false)
    String nomPatient;

    @Column(nullable = false)
    Integer age;


    public List<Glycemie> getGlycemies() {
        return glycemies;
    }

    public void setGlycemies(List<Glycemie> glycemies) {
        this.glycemies = glycemies;
    }

    @Column(nullable = false)
    String picturePatient;

    @OneToMany(mappedBy = "patient")
    private List<Glycemie> glycemies = new ArrayList<>();


    public Integer getNumeroPatient() {
        return numeroPatient;
    }

    public void setNumeroPatient(Integer numeroPatient) {
        this.numeroPatient = numeroPatient;
    }

    public String getNomPatient() {
        return nomPatient;
    }

    public void setNomPatient(String nomPatient) {
        this.nomPatient = nomPatient;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getPicturePatient() {
        return picturePatient;
    }

    public void setPicturePatient(String picturePatient) {
        this.picturePatient = picturePatient;
    }
}
