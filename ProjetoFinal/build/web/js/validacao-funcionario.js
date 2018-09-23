$("#validacao-form-func").validate({
    errorClass: "text-danger border-danger",

    errorElementClass: 'text-danger border-danger',
    validElementClass: 'text-sucess border-sucess',
    validClass: "text-sucess border-sucess",
    rules: {
	login: {
	    required: true,
	    minlength: 5,
	    maxlength: 20
	},
	senha: {
	    required: true,
	    minlength: 6,
	    maxlength: 6
	},
	nome: {
	    required: true,
	    minlength: 3,
	    maxlength: 100
	},
	cpf: {
	    required: true,
	    minlength: 11,
	    maxlength: 11
	},
	email: {
	    required: true,
	}
    },
    messages: {
	login: {
	    required: "Campo Obrigatorio",
	    minlength: "login deve conter no minimo {0} caracteres",
	    maxlength: "login deve conter no maximo {0} caracteres",
	},
	senha: {
	    required: "Campo Obrigatorio",
	    minlength: "",
	}
    }
});