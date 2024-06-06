package com.octest.repository;

import com.octest.beans.Patient;
import org.springframework.data.repository.CrudRepository;

public interface PatientRepository extends CrudRepository<Patient,Integer> {
}
