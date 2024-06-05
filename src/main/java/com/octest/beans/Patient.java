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

    @OneToMany (mappedBy = "patient", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Glycemie> glycemie = new ArrayList<>();


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
}
