package net.codejava.cliente;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ClienteService {
	@Autowired ClienteRepository repo;
	
	public void save(Cliente cliente) {
		repo.save(cliente);
	}
	
	public List<Cliente> listAll() {
		return (List<Cliente>) repo.findAll();
	}
	
	public Cliente get(Long id) {
		return repo.findById(id).get();
	}
	
	public void delete(Long id) {
		repo.deleteById(id);
	}
	
	public List<Cliente> search(String keyword) {
		return repo.search(keyword);
	}
}
