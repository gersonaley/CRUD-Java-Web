package net.codejava.cliente;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ClienteController {

	@Autowired
	private ClienteService clienteService;
	
	@RequestMapping("/")
	public ModelAndView home() {
		List<Cliente> listCliente = clienteService.listAll();
		ModelAndView mav = new ModelAndView("index");
		mav.addObject("listCliente", listCliente);
		return mav;
	}
	
	@RequestMapping("/new")
	public String newClienteForm(Map<String, Object> model) {
		Cliente cliente = new Cliente();
		model.put("cliente", cliente);
		return "new_cliente";
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveCliente(@ModelAttribute("cliente") Cliente cliente) {
		clienteService.save(cliente);
		return "redirect:/";
	}
	
	@RequestMapping("/edit")
	public ModelAndView editClienteForm(@RequestParam long id) {
		ModelAndView mav = new ModelAndView("edit_cliente");
		Cliente cliente = clienteService.get(id);
		mav.addObject("cliente", cliente);
		
		return mav;
	}
	
	@RequestMapping("/delete")
	public String deleteClienteForm(@RequestParam long id) {
		clienteService.delete(id);
		return "redirect:/";		
	}
	
	@RequestMapping("/search")
	public ModelAndView search(@RequestParam String keyword) {
		List<Cliente> result = clienteService.search(keyword);
		ModelAndView mav = new ModelAndView("search");
		mav.addObject("result", result);
		
		return mav;		
	}	
}
