package siesa.api.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Mascota {
    private Long idMascota;

    public void setIdMascota(Long idMascota) {
        this.idMascota = idMascota;
    }

    @Id
    public Long getIdMascota() {
        return idMascota;
    }
}
