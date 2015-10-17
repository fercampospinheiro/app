package br.com.js.presentation;

import br.com.js.domain.email.Email;
import br.com.js.domain.email.EmailFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.js.domain.contato.Contato;
import br.com.js.domain.service.EmailService;
import org.springframework.beans.factory.annotation.Autowired;

@Controller
@RequestMapping("/contato")
public class ContatoController {

        @Autowired private EmailFactory factory;
        @Autowired private EmailService service;
    
        @RequestMapping(method = RequestMethod.GET)
	public String carregaTemplateContato(Model model) {
		Contato contato = new  Contato();
		model.addAttribute("contato", contato);
		return "/contato/contato";
	}
	
	@RequestMapping(value="/salvar",method=RequestMethod.POST)
	private String salvar(Contato contato,Model model){
	
            Email email = factory.contact(contato);
            service.sendMail(email);
            model.addAttribute("contato", contato);
            model.addAttribute("ok","Sua mensagem foi enviada com sucessso. Obrigado(a)!" );
            return "/contato/contato";
	}
}
