package pl.jgora.aeroklub.flightbook.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.jgora.aeroklub.flightbook.repository.DocumentsRepository;

@Service
@Transactional
@RequiredArgsConstructor
public class DocumentsService {

    private final DocumentsRepository documentsRepository;


}
