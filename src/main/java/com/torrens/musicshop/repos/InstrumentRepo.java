package com.torrens.musicshop.repos;

import com.torrens.musicshop.domain.Instrument;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

public interface InstrumentRepo extends JpaRepository<Instrument, Long> {

    Instrument findInstrumentById(Long instrumentId);
}
