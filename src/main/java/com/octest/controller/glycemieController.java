package com.octest.controller;

import com.octest.beans.Glycemie;
import com.octest.beans.Patient;
import com.octest.services.GlycemieService;
import com.octest.services.PatientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.sql.SQLOutput;
import java.time.LocalDateTime;
import java.util.ArrayList;


@Controller
public class glycemieController {
    private final GlycemieService glycemieService;
    private final PatientService patientService;

    public glycemieController(GlycemieService glycemieService, PatientService patientService) {
        this.glycemieService = glycemieService;
        this.patientService = patientService;
    }

    @GetMapping("/")
    public String showHome(ModelMap model) {
        model.put("Patients", patientService.getPatientsWithGlycemie());
        model.put("glycemies", patientService.getPatientsWithGlycemie());
        return "Home";
    }

    @GetMapping("/nouvelleGlycemie")
    public String addGlycemieForm(ModelMap model) {
        model.put("patients", patientService.getAllPatients());
        return "nouvelleGlycemie";
    }

    @PostMapping("/ajouterGlycemie")
    public String ajouterGlycemie(@RequestParam("dateEtHeure") String dateEtHeure,
                                  @RequestParam("niveau") String niveau,
                                  @RequestParam("typeMesure") String typeMesure,
                                  @RequestParam("numeroPatient") String numeroPatient,
                                  @RequestParam("commentaire") String commentaire,ModelMap modelMap) {
        LocalDateTime date = LocalDateTime.parse(dateEtHeure);
        Integer niv=Integer.parseInt(niveau);
        Integer patient = Integer.parseInt(numeroPatient);
        Patient nvpatient = patientService.getPatientById(patient);
        Glycemie glycemie = new Glycemie(date,niv,typeMesure,commentaire,nvpatient);
        glycemieService.saveGlycemie(glycemie);
        return "Home";
    }

    @GetMapping("/delete/{id}")
    public String deleteGlycemie(@PathVariable long id) {
        glycemieService.deleteGlycemie(id);
        return "";
    }

    @GetMapping("/analyses")
    public String showAnalyticGlycemie() {
        ArrayList<Glycemie> glycemies = glycemieService.getAllGlycemie();
        return "analyses";
    }
}
