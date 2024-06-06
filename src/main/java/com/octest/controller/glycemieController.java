package com.octest.controller;

import com.octest.beans.Glycemie;
import com.octest.services.GlycemieService;
import com.octest.services.PatientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.sql.SQLOutput;
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
    public String showHome(Model model) {
        model.addAttribute("reading", new com.octest.beans.Glycemie());
        return "Home";
    }

    @GetMapping("/nouvelleGlycemie")
    public String addGlycemieForm(ModelMap modelMap) {
        modelMap.addAttribute("exemple", "exemple applique");
        return "nouvelleGlycemie";
    }

    @PostMapping
    public String addGlycemieSubmit(@ModelAttribute Glycemie glycemie) {
        glycemieService.saveGlycemie(glycemie);
        return "index";
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
