package pl.jgora.aeroklub.flightbook.repository;

import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import pl.jgora.aeroklub.flightbook.entity.LLP;

public interface LLPRepository extends JpaRepository<LLP, Long> {

    @EntityGraph(attributePaths = {"glider"})

    public LLP findByName(String name);
}
