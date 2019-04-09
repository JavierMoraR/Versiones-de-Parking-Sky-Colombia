   function ver_password() {
    var passwd_valor = document.form1.password.value;
 
    document.getElementById('passwd_sitio').innerHTML
        = (document.form1.input_ver.checked)
        ? '<input type="text"     name="password" value="">'
        : '<input type="password" name="password" value="">'
        ;
 
    document.form1.password.value = passwd_valor;
}
               