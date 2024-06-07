package com.octest.services;

import com.octest.beans.Glycemie;
import com.octest.beans.Patient;
import com.octest.repository.GlycemieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class GlycemieService {
    @Autowired
    GlycemieRepository glycemieRepository;

    @Transactional
    public ArrayList<Glycemie> getAllGlycemie() {
        return (ArrayList<Glycemie>) glycemieRepository.findAll();
    }

    @Transactional
    public void deleteGlycemie(Long idGlycemie, Patient patient) {
        glycemieRepository.deleteGlycemieByIdGlycemieAndPatient(idGlycemie,patient);
    }

    @Transactional
    public boolean saveGlycemie(Glycemie glycemie) {
        return glycemieRepository.save(glycemie) != null;
    }

    @Transactional
    public List<Glycemie> getGlycemieByPatient(Patient patient) {
        return glycemieRepository.getGlycemiesByPatient(patient);
    }
}
