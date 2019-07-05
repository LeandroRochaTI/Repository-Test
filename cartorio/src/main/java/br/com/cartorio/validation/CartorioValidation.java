package br.com.cartorio.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import br.com.cartorio.models.Cartorio;

public class CartorioValidation implements Validator{
	
	public void valida(Cartorio cartorio, Errors errors) {
		
	}

	@Override
	public boolean supports(Class<?> clazz) {
		return Cartorio.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmpty(errors, "nome", "field.required");
	}
}
