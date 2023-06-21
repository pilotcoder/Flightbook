package pl.jgora.aeroklub.flightbook.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.jgora.aeroklub.flightbook.entity.Flight;
import pl.jgora.aeroklub.flightbook.entity.LLP;
import pl.jgora.aeroklub.flightbook.repository.LLPRepository;

import java.time.LocalDate;
import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class LLPService {

    private final LLPRepository llpRepository;





    public void save(LLP llp){llpRepository.save(llp);}

    public LLP findByName(String name){
        return  llpRepository.findByName(name);
    }
    public List<LLP> findAll(){
        return llpRepository.findAll();
    }


    public LLP findById(Long id){
        return llpRepository.findById(id).get();
    }

    public void deleteById(Long id){
        llpRepository.deleteById(id);
    }

    public void editLlp(LLP llp){
        llpRepository.save(llp);
    }

    public List<LLP> findLLPByGlider_Id(Long gliderId){
        return llpRepository.findLLPByGlider_Id(gliderId);
    }

}



