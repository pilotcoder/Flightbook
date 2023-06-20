package pl.jgora.aeroklub.flightbook.repository;

import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import pl.jgora.aeroklub.flightbook.entity.Glider;

public interface GliderRepository extends JpaRepository<Glider, Long> {

    @EntityGraph(attributePaths = {"llpList"})
    public Glider findGliderByRegNumber(String regNumber);

}
