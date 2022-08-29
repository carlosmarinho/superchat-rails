function Send() {
    var dev = document.getElementById('curso').value;
    document.getElementById('resultado').style.display = 'block';
    document.getElementById('fcurso').innerHTML = 'Experiência: ' + dev;

    var exp = document.getElementsByName('exper');
    var xp = '';
    var traco = '-';
    for (let i = 0; i < exp.length; i++) {
        if (exp[i].checked) {
            xp = xp + exp[i].value + ' ';
        }
    }
    console.log('qualquer coisa', xp);
    document.getElementById('resultado').style.display = 'block';
    document.getElementById('experiencia-nivel').innerHTML = 'Curso: ' + xp;
}
