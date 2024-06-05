package com.octest.repository;

import com.octest.beans.Glycemie;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.ArrayList;

public interface GlycemieRepository extends CrudRepository<Glycemie,Long> {

}
