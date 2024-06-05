package com.octest.controller;

import com.octest.beans.Glycemie;
import com.octest.services.GlycemieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;


@Controller
public class glycemieController {
    private final GlycemieService glycemieService;

    public glycemieController(GlycemieService glycemieService) {
        this.glycemieService = glycemieService;
    }

    @GetMapping("/add")
    public String addGlycemieForm(Model model) {
        model.addAttribute("reading", new com.octest.beans.Glycemie());
        return "add-reading-form";
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

    @GetMapping
    public String getAllGlycemies() {
        ArrayList<Glycemie> glycemies = glycemieService.getAllGlycemie();
        return "";
    }
}
