package com.octest.services;

import com.octest.beans.Glycemie;
import com.octest.repository.GlycemieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;

@Service
public class GlycemieService {
    @Autowired
    GlycemieRepository glycemieRepository;

    @Transactional
    public ArrayList<Glycemie> getAllGlycemie() {
        return (ArrayList<Glycemie>) glycemieRepository.findAll();
    }

    @Transactional
    public void deleteGlycemie(Long idGlycemie) {
        glycemieRepository.deleteById(idGlycemie);
    }

    @Transactional
    public boolean saveGlycemie(Glycemie glycemie) {
        return glycemieRepository.save(glycemie) != null;
    }
}
