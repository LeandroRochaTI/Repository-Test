package br.com.cartorio.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.cartorio.dao.CartorioDAO;
import br.com.cartorio.models.Cartorio;
import br.com.cartorio.validation.CartorioValidation;

@Controller

public class CartorioController {

	@Autowired
	private CartorioDAO dao;

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.addValidators(new CartorioValidation());

	};

	@RequestMapping("/form")
	public ModelAndView form() {
		return new ModelAndView("/cartorios/form");
	}

	@RequestMapping(value = "/cartorios", method = RequestMethod.POST)
	public ModelAndView gravar(@Valid Cartorio cartorio, BindingResult result, RedirectAttributes redirectAttributes) {
		System.out.println(cartorio);
		if (result.hasErrors()) {
			return form();
		}
		dao.gravar(cartorio);
		redirectAttributes.addFlashAttribute("sucesso", "Registro do cartorio de nome: " + cartorio.getNome() + " salvo!");
		return new ModelAndView("redirect:lista");
	}

	@RequestMapping(value = "/lista", method = RequestMethod.GET)
	public ModelAndView listar() {
		List<Cartorio> cartorios = dao.listar();
		ModelAndView modelAndView = new ModelAndView("cartorios/lista");
		modelAndView.addObject("cartorios", cartorios);
		return modelAndView;
	}

	@RequestMapping("/detalhe")
	public ModelAndView detalhe(Integer numero) {
		ModelAndView view = new ModelAndView("cartorios/detalhe");
		Cartorio cartorio = dao.find(numero);
		view.addObject("cartorio", cartorio);
		return view;
	}

	@RequestMapping(value = "/editar", method = RequestMethod.GET)
	public ModelAndView editar(Integer numero) {
		ModelAndView view = new ModelAndView("/cartorios/editar");
		view.addObject("cartorio", dao.find(numero));
		return view;
	}

	@RequestMapping(value = "/editar", method = RequestMethod.POST)
	public ModelAndView atualizar(Cartorio cartorio, RedirectAttributes redirectAttributes) {
		System.out.println("testando ID " + cartorio);
		dao.atualizar(cartorio);
		redirectAttributes.addFlashAttribute("sucesso",	"Registro do cartorio de ID: " + cartorio.getNumero() + " atualizado!");
		return new ModelAndView("redirect:lista");
	}

	@RequestMapping(value = "/remover")
	public ModelAndView remover(Integer id, RedirectAttributes redirectAttributes) {
		System.out.println(id);
		dao.remover(id);
		redirectAttributes.addFlashAttribute("sucesso", "Registro do cartorio de ID: " + id + ", removido!");
		return new ModelAndView("redirect:lista");
	}

	@RequestMapping(value = "/cartorios", method = RequestMethod.GET)
	@ResponseBody
	public List<Cartorio> getRelatorio() {
		List<Cartorio> produtos = new ArrayList<>();
		produtos = dao.listar();
		return produtos;
	}
	
	
}
