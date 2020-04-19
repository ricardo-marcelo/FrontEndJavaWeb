package pe.ricardomarcelo.ventas.services;

import java.util.List;

import pe.ricardomarcelo.ventas.model.Cliente;

public interface ClienteService {
	public String crear(Cliente cliente);
	public List<Cliente> consultarTodo();
}
