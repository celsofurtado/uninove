// *** OBTER TODAS AS TRs
var alunos = document.querySelectorAll("#aluno");

// *** ITERAR NA TABELA 
for (var i = 0; i < alunos.length; i++){
  
  // *** RECUPERAR UMA TR
  var trAluno = alunos[i];

  // *** RECUPERAR AS TDs
  var tdNota1 = trAluno.querySelector("#nota1");
  var tdNota2 = trAluno.querySelector("#nota2");

  // *** RECUPERAR AS NOTAS NAS TDs
  var nota1 = tdNota1.textContent;
  var nota2 = tdNota2.textContent;

  // *** CALCULAR A MÉDIA DO ALUNO
  var media = calcularMedia(nota1, nota2);

  // *** OBTER A TD QUE GUARDARÁ A MÉDIA
  var tdMedia = trAluno.querySelector("#media");

  // *** ATRIBUIR A TD A MÉDIA DO ALUNO
  tdMedia.textContent = media;

  // *** OBTER A TD QUE GUARDARÁ A SITUAÇÃO
  var tdSituacao = trAluno.querySelector("#situacao");

  // *** DEFINIR A SITUAÇÃO DO ALUNO
  tdSituacao.textContent = definirSituacao(media);
 
}

function calcularMedia(nota1, nota2){
  var media = (parseInt(nota1) + parseInt(nota2)) / 2;
  return media.toFixed(2);
}

function definirSituacao(media){
  if (media >= 5){
    return "APROVADO";
  } else {
    return "REPROVADO";
  } 
}
