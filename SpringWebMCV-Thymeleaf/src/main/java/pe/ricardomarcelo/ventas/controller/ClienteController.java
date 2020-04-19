package pe.ricardomarcelo.ventas.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import pe.ricardomarcelo.ventas.model.Cliente;
import pe.ricardomarcelo.ventas.services.ClienteService;

@Controller
public class ClienteController {

	@Autowired
	private ClienteService clienteService;
	
	@RequestMapping(value = "/clienteNuevo", method = RequestMethod.GET)
	public String clienteNuevo(Model model) {

		Cliente cliente = new Cliente();

		model.addAttribute("cliente", cliente);
		return "clientes/cliente-nuevo";
	}

	@RequestMapping(value = "/clienteGuardar", method = RequestMethod.POST)
	public String clienteGuardar(@ModelAttribute("cliente") Cliente cliente, Model model, RedirectAttributes ra) {

		clienteService.crear(cliente);

		ra.addFlashAttribute("codigo", "OK");
		ra.addFlashAttribute("resultado", "Cliente registrado");

		return "redirect:/clienteNuevo";
	}

	@RequestMapping(value = "/clienteGuardarAjax", method = RequestMethod.POST)
	public @ResponseBody Map<String, String> clienteGuardarAjax(@RequestBody Cliente cliente) {

		Map<String, String> res = new HashMap<>();

		clienteService.crear(cliente);

		res.put("codigo", "OK");
		res.put("resultado", "Cliente registrado");

		return res;
	}

	@RequestMapping(value = "/clienteListado", method = RequestMethod.GET)
	public String clienteListado(Model model) {
		
		model.addAttribute("clientes", clienteService.consultarTodo());

		return "clientes/cliente-listado";
	}

	@RequestMapping(value = "/clienteListadoAjax", method = RequestMethod.GET)
	public @ResponseBody List<Cliente> clienteListadoAjax() {
		
		return clienteService.consultarTodo();
	}
}
