package siesa.api.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import siesa.api.demo.model.Propietario;

@Repository
public interface ProietarioRepositoryInterface extends JpaRepository<Propietario, Long> {
}
