package pl.jgora.aeroklub.flightbook.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.jgora.aeroklub.flightbook.entity.Glider;
import pl.jgora.aeroklub.flightbook.repository.GliderRepository;

@Service
@Transactional
@RequiredArgsConstructor
public class GliderService {

    private final GliderRepository gliderRepository;

    public void save(Glider glider){gliderRepository.save(glider);}
}
