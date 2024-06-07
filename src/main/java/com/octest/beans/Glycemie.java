package com.octest.beans;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "Glycemie")
public class Glycemie {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idGlycemie;

    @Column(nullable = false)
    @DateTimeFormat(pattern = "dd-MM-yyyy HH:MM")
    private LocalDateTime dateEtHeure;

    @Column(nullable = false)
    private Integer niveau;

    @Column(nullable = false, length = 50)
    private String typeMesure;

    @ManyToOne
    @JoinColumn(name = "numeroPatient", nullable = false)
    private Patient patient;

    @Column(columnDefinition = "TEXT")
    private String commentaire;

    public Glycemie() {}

    public Glycemie(LocalDateTime dateEtHeure, Integer niveau, String typeMesure, String commentaire, Patient patient) {
        this.dateEtHeure = dateEtHeure;
        this.niveau = niveau;
        this.typeMesure = typeMesure;
        this.commentaire = commentaire;
        this.patient = patient;
    }

    // Getters and setters
    public Long getIdGlycemie() {
        return idGlycemie;
    }

    public void setIdGlycemie(Long idGlycemie) {
        this.idGlycemie = idGlycemie;
    }

    public LocalDateTime getDatEtHeure() {
        return dateEtHeure;
    }

    public void setDatEtHeure(LocalDateTime dateEtHeure) {
        this.dateEtHeure = dateEtHeure;
    }

    public Integer getNiveau() {
        return niveau;
    }

    public void setNiveau(Integer niveau) {
        this.niveau = niveau;
    }

    public String getTypeMesure() {
        return typeMesure;
    }

    public void setTypeMesure(String typeMesure) {
        this.typeMesure = typeMesure;
    }

    public String getCommentaire() {
        return commentaire;
    }

    public void setCommentaire(String commentaire) {
        this.commentaire = commentaire;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }
}
