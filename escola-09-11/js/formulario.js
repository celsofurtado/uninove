var botao = document.querySelector("#bt-adicionar");

botao.addEventListener("click", function (event){
  event.preventDefault();

  var formulario = document.querySelector("#formulario");
  var aluno = obterAluno(formulario);

  // *** VALIDAR DADOS DO ALUNO

  var erros = validarDados(aluno);

  if (erros.length > 0){

    var ul = document.querySelector("#lista-erros");
    ul.innerHTML = "";

    for (var i = 0; erros.length > i; i++){
      var li = document.createElement("li");
      li.textContent = erros[i];
      ul.appendChild(li);
    }
    
    return;
  }


  // *** CRIAÇÃO DA NOVA LINHA DA TABELA
  var alunoTr = criarTr(aluno);

  // *** OBTER A TABELA QUE RECEBERÁ A LINHA
  var tabela = document.querySelector("#tabela");

  // *** ADICIONA A TR NA TABELA
  tabela.appendChild(alunoTr);

});

function obterAluno(form){
  var aluno = {
    nome: form.nome.value,
    nota1: form.nota1.value,
    nota2: form.nota2.value,
    media: calcularMedia(form.nota1.value, form.nota2.value),
    situacao: definirSituacao(calcularMedia(form.nota1.value, form.nota2.value))
  }
  return aluno;
}

function criarTd(dado){
  var td = document.createElement("td");
  td.textContent = dado;
  return td;
}

function criarTr(aluno){
  var alunoTr = document.createElement("tr");
  alunoTr.appendChild(criarTd(aluno.nome));
  alunoTr.appendChild(criarTd(aluno.nota1));
  alunoTr.appendChild(criarTd(aluno.nota2));
  alunoTr.appendChild(criarTd(aluno.media));
  alunoTr.appendChild(criarTd(aluno.situacao));
  return alunoTr;
}

function validarDados(aluno){

  var erros = [];

  if (validarNota1(aluno.nota1) == false){
    erros.push("A nota 1 deve estar entre 0 e 10!")
  }

  if (validarNota2(aluno.nota2) == false){
    erros.push("A nota 2 deve estar entre 0 e 10");
  }

  return erros;

}






