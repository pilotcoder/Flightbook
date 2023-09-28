package pl.jgora.aeroklub.flightbook.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.jgora.aeroklub.flightbook.entity.Documents;

public interface DocumentsRepository extends JpaRepository<Documents, Long> {

}
