package pl.jgora.aeroklub.flightbook.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.jgora.aeroklub.flightbook.entity.Glider;
import pl.jgora.aeroklub.flightbook.repository.GliderRepository;

import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class GliderService {

    private final GliderRepository gliderRepository;

    public void save(Glider glider){gliderRepository.save(glider);}

    public Glider findGliderByRegNumber(String regNumber){

        return gliderRepository.findGliderByRegNumber(regNumber);
    }

    public Glider findGliderById(Long id){
        return gliderRepository.findById(id).get();
    }

    public List<Glider> findAllGliders(){
        return gliderRepository.findAll();
    }
}
