package com.octest.services;


import com.octest.beans.Glycemie;
import com.octest.beans.Patient;
import com.octest.repository.PatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class PatientService {
    @Autowired
    PatientRepository patientRepository;

    @Transactional
    public List<Patient> getPatientsWithGlycemie() {
        return (List<Patient>) patientRepository.findPatientsWithGlycemie();
    }

    @Transactional
    public Patient getPatientById(Integer numeroPatient){return (Patient) patientRepository.getPatientsByNumeroPatient(numeroPatient);}
}
