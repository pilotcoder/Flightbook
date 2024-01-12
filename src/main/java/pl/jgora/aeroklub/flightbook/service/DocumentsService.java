package pl.jgora.aeroklub.flightbook.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.jgora.aeroklub.flightbook.entity.Documents;
import pl.jgora.aeroklub.flightbook.repository.DocumentsRepository;

import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class DocumentsService {

    private final DocumentsRepository documentsRepository;

    public void save(Documents documents){
        documentsRepository.save(documents);
    }
    public List<Documents> findAllDocumentsByGliderId (Long gliderId){
        return documentsRepository.findDocumentsByGliderId(gliderId);
    }

}
