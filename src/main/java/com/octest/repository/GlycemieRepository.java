package com.octest.repository;

import com.octest.beans.Glycemie;
import com.octest.beans.Patient;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.ArrayList;
import java.util.List;

public interface GlycemieRepository extends CrudRepository<Glycemie,Long> {
}
