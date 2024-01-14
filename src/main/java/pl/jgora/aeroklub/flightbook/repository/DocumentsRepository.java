package pl.jgora.aeroklub.flightbook.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.jgora.aeroklub.flightbook.entity.Documents;


import java.time.LocalDate;
import java.util.List;

public interface DocumentsRepository extends JpaRepository<Documents, Long> {

    public Documents findByName(String name);
    public List<Documents> findDocumentsByGliderId (Long gliderId);

    public List<Documents> findByDateOfExpiry (LocalDate dateOfExpiry);
}
