package pl.jgora.aeroklub.flightbook.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.jgora.aeroklub.flightbook.entity.LLP;

public interface LLPRepository extends JpaRepository<LLP, Long> {

    public LLP findByName(String name);
}
