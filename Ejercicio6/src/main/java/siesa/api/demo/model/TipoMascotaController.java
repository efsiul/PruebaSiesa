package siesa.api.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class TipoMascotaController {
    private Long idTipoMascota;

    public void setIdTipoMascota(Long idTipoMascota) {
        this.idTipoMascota = idTipoMascota;
    }

    @Id
    public Long getIdTipoMascota() {
        return idTipoMascota;
    }
}
