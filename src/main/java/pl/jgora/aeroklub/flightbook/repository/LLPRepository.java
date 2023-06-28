package pl.jgora.aeroklub.flightbook.repository;

import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import pl.jgora.aeroklub.flightbook.entity.LLP;

import java.util.List;

public interface LLPRepository extends JpaRepository<LLP, Long> {

//    @EntityGraph(attributePaths = {"glider"})

    public LLP findByName(String name);

    public List<LLP> findLLPByGlider_Id(Long gliderId);


}
