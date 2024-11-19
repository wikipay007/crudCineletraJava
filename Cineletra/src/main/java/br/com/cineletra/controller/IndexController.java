package br.com.cineletra.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.cineletra.dao.ConnectionFactory;
import br.com.cineletra.dao.FilmeDao;
import br.com.cineletra.model.Filme;

// anotação
@Controller
public class IndexController {
	
	@RequestMapping ("/")
	public String inicio() {
		ConnectionFactory.conectar();
		return "redirect:home";
	}
	@RequestMapping("/home") //http:localhost:8080
	//String -> Retorno de uma pesquisa
	public String index(Model model) {
		FilmeDao dao =new FilmeDao();
		
		//items= 
		model.addAttribute("filmes", dao.listar());
		return "home";
	}
	@RequestMapping("/form")
	public String form(Long idFilme, Model model) {
		FilmeDao dao = new FilmeDao();
		
		Filme p = new Filme();
		if(idFilme != null) {
			p = dao.buscar(idFilme);
		}
		
		model.addAttribute("filme", p);
		return "form";
	}
	@RequestMapping("/filme")
	public String filme(Long idFilme, Model model) {
		FilmeDao dao = new FilmeDao();
		model.addAttribute("filme", dao.buscar(idFilme));
		
		
		return "filme";
	}
	
	@RequestMapping(value = "adicionarFilme", method = RequestMethod.POST)
	public String adicionarFilme(Filme filme) {
		FilmeDao dao = new FilmeDao();
		dao.inserir(filme);
		return "redirect:home";
	}
	
	@RequestMapping("deletarFilme")
	public String deletarFilme(Long idFilme) {
		FilmeDao dao = new FilmeDao();
		dao.excluir(idFilme);
		return "redirect:home";
		
	}
	
	@RequestMapping(value= "atualizarFilme", method = RequestMethod.POST)
	public String atualizarFilme(Long idFilme, Filme p) {
		FilmeDao dao = new FilmeDao();
		
		dao.atualizarFilmes(p, idFilme);
		return "redirect:home";
		
	}
	
	
}
