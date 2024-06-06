package com.octest.repository;

import com.octest.beans.Patient;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface PatientRepository extends CrudRepository<Patient,Integer> {
    Patient getPatientsByNumeroPatient(Integer numeroPatient);

    @Query(value = "SELECT * FROM Patient WHERE numeroPatient IN (SELECT patient.numeroPatient FROM Glycemie inner join Patient WHERE Glycemie.numeroPatient = Patient.numeroPatient)", nativeQuery = true)
    List<Patient> findPatientsWithGlycemie();
}
