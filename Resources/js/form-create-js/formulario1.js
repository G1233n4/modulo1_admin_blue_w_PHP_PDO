const formulario = document.getElementById('formulario-registro-tutor');
const inputs = document.querySelectorAll('#formulario-registro-tutor input');

const expresiones = {
    rfc: /^[A-Z0-9]{12,13}$/, // Letras, numeros.
    nombres: /^[a-zA-Z0-9\s]{5,18}$/, // Letras y espacios, pueden llevar acentos.
    appat: /^[a-zA-ZÀ-ÿ]{1,40}$/, // Letras, pueden llevar acentos.
    apmat: /^[a-zA-ZÀ-ÿ]{1,40}$/, // Letras, pueden llevar acentos.
    email: /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/,
    clave: /^.{4,12}$/, // 4 a 12 digitos.
    phone: /^\d{7,14}$/, // 7 a 14 numeros.
    usuario: /^[a-zA-Z0-9\_\-]{4,16}$/, // Letras, numeros, guion y guion_bajo.
}

const campos = {
    rfc: false,
    nombres: false,
    appat: false,
    apmat: false,
    email: false,
    clave: false,
    phone: false
}

const validarFormulario = (e) => {
    switch (e.target.name) {
        case "rfc":
            validarCampo(expresiones.rfc, e.target, 'rfc');
            break;
        case "nombres":
            validarCampo(expresiones.nombres, e.target, 'nombres');
            break;
        case "appat":
            validarCampo(expresiones.appat, e.target, 'appat');
            break;
        case "apmat":
            validarCampo(expresiones.apmat, e.target, 'apmat');
            break;
        case "email":
            validarCampo(expresiones.email, e.target, 'email');
            break;
        case "clave":
            validarCampo(expresiones.clave, e.target, 'clave');
            validarClave2();
            break;
        case "clave2":
            validarClave2();
            break;
        case "phone":
            validarCampo(expresiones.phone, e.target, 'phone');
            break;
    }

}

const validarCampo = (expresion, input, campo) => {
    if (expresion.test(input.value)) {
        document.getElementById(`grupo__${campo}`).classList.remove('formulario__grupo-incorrecto');
        document.getElementById(`grupo__${campo}`).classList.add('formulario__grupo-correcto');
        document.querySelector(`#grupo__${campo} i`).classList.add('fa-check-circle');
        document.querySelector(`#grupo__${campo} i`).classList.remove('fa-times-circle');
        document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.remove('formulario__input-error-activo');
        campos[campo] = true;
    } else {
        document.getElementById(`grupo__${campo}`).classList.add('formulario__grupo-incorrecto');
        document.getElementById(`grupo__${campo}`).classList.remove('formulario__grupo-correcto');
        document.querySelector(`#grupo__${campo} i`).classList.add('fa-times-circle');
        document.querySelector(`#grupo__${campo} i`).classList.remove('fa-check-circle');
        document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.add('formulario__input-error-activo');
        campos[campo] = false;

    }

}

const validarClave2 = () => {
    const inputclave = document.getElementById('clave');
    const inputclave2 = document.getElementById('clave2');
    if (inputclave.value !== inputclave2.value) {
        document.getElementById(`grupo__clave2`).classList.add('formulario__grupo-incorrecto');
        document.getElementById(`grupo__clave2`).classList.remove('formulario__grupo-correcto');
        document.querySelector(`#grupo__clave2 i`).classList.add('fa-times-circle');
        document.querySelector(`#grupo__clave2 i`).classList.remove('fa-check-circle');
        document.querySelector(`#grupo__clave2 .formulario__input-error`).classList.add('formulario__input-error-activo');
        campos['clave'] = false;
    } else {
        document.getElementById(`grupo__clave2`).classList.remove('formulario__grupo-incorrecto');
        document.getElementById(`grupo__clave2`).classList.add('formulario__grupo-correcto');
        document.querySelector(`#grupo__clave2 i`).classList.remove('fa-times-circle');
        document.querySelector(`#grupo__clave2 i`).classList.add('fa-check-circle');
        document.querySelector(`#grupo__clave2 .formulario__input-error`).classList.remove('formulario__input-error-activo');
        campos['clave'] = true;
    }

}

inputs.forEach((input) => {
    input.addEventListener('keyup', validarFormulario);
    input.addEventListener('blur', validarFormulario);
});

formulario.addEventListener('submit', (e) => {

    if (campos.rfc && campos.nombres && campos.appat && campos.apmat && campos.email && campos.clave && campos.phone && terminos.checked) {

    } else {
        document.getElementById('formulario__mensaje').classList.add('formulario__mensaje-activo');
    }
});