package siesa.api.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import siesa.api.demo.model.Propietario;
import siesa.api.demo.repository.ProietarioRepositoryInterface;

import java.util.List;

@Service
public class PropietarioService {
    @Autowired
    ProietarioRepositoryInterface propietarioRepository;

    public  List<Propietario> buscarTodas() {
        return propietarioRepository.findAll();
    }
}
