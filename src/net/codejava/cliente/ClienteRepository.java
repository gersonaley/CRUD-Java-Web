package net.codejava.cliente;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface ClienteRepository extends CrudRepository<Cliente, Long> {
	
	@Query(value = "SELECT c FROM Cliente c WHERE c.nombre LIKE '%' || :keyword || '%'"
			+ " OR c.direccion LIKE '%' || :keyword || '%'"
			+ " OR c.ciudad LIKE '%' || :keyword || '%'"
			+ " OR c.telefono LIKE '%' || :keyword || '%'")
	public List<Cliente> search(@Param("keyword") String keyword);
}
