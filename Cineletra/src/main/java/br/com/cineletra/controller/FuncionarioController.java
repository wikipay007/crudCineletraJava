package br.com.cineletra.controller;

import br.com.cineletra.dao.FilmeDao;
import br.com.cineletra.dao.FuncionarioDao;
import br.com.cineletra.model.Filme;
import br.com.cineletra.model.Funcionario;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FuncionarioController {

	@RequestMapping(value = "/salvarFuncionario", method = RequestMethod.POST)
	public String salvarFuncionario(Funcionario funcionario) {
		FuncionarioDao funcionarioDao = new FuncionarioDao();
		funcionarioDao.inserir(funcionario);
		return "redirect:index";
	}

	@RequestMapping("/formCrud")
	public String formCrud(Model model) {
		return "formCrud";
	}

	@RequestMapping("/index")
	public String index1(Model model) {
		FuncionarioDao dao = new FuncionarioDao();
		model.addAttribute("funcionarios", dao.listar());

		return "index";
	}

	@RequestMapping("/user")
	public String user(Model model) {

		return "user";
	}

	@RequestMapping(value = "/funcionarios", method = RequestMethod.GET)
	public String exibirFuncionario(@RequestParam("idfuncionario") int id, Model model) {
		// Busca o funcionário pelo ID
		System.out.println(id);

		FuncionarioDao funcionarioDao = new FuncionarioDao();

		Funcionario funcionario = funcionarioDao.buscarPorId(id);

		model.addAttribute("funcionario", funcionario);
		return "user";
	}
	@RequestMapping(value = "/deletarFuncionario", method = RequestMethod.GET)
	public String deletarFuncionario(@RequestParam("idfuncionario") int id) {
	    FuncionarioDao funcionarioDao = new FuncionarioDao();

	    try {
	        funcionarioDao.deletar(id);
	        System.out.println("Funcionário com ID " + id + " deletado com sucesso!");
	    } catch (Exception e) {
	        System.out.println("Erro ao tentar deletar o funcionário: " + e.getMessage());
	    }

	    return "redirect:index"; 
	}
	@RequestMapping(value = "/editarFuncionario", method = RequestMethod.GET)
	public String exibirFormularioEdicao(@RequestParam("id") int id, Model model) {
		FuncionarioDao funcionarioDao = new FuncionarioDao();
	    Funcionario funcionario = funcionarioDao.buscarPorId(id);
	    model.addAttribute("funcionario", funcionario);
	    return "formCrud2"; // Nome da página JSP para edição
	}
	@RequestMapping(value = "/salvarEdicao", method = RequestMethod.POST)
	public String salvarEdicao(Funcionario funcionario, Long idfuncionario) {
		FuncionarioDao funcionarioDao = new FuncionarioDao();
	    funcionarioDao.atualizar(funcionario, idfuncionario);
	    System.out.println("Passou aqui");
	    return "redirect:index"; 
	}

}
