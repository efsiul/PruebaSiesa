package siesa.api.demo.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import siesa.api.demo.model.Propietario;
import siesa.api.demo.service.PropietarioService;

import java.util.List;

@RestController
@RequestMapping("/propietario")
public class PersonaController {

    @Autowired
    PropietarioService propietarioService;

    @GetMapping
    public List<Propietario> buscarTodas(){
        return propietarioService.buscarTodas();
    }
}
