void main() {
  print('Iniciou o processo');
  m2();
  p2();

  var i = 0;
  while (i < 5) {
    print([i]);
    i++;
  } //Isso é um processo sincrono, pois faz uma sequência. Executa na ordem que tá escrevendo.

  print('finalizou');
} // Por que existem processos assíncronos? Os assincronos servem para os processos maiores onde demandam mais tempo para carregamento. Existem processos específicos no Dart que necessitam do Async: saída para buscar um dado no backend; leitura de um dado no banco de dados; leitura de um arquivo..

void m2() {
  print('função 2');
}

void p2() {
  Future.delayed(Duration(seconds: 2), () {
    print('Processo 2 sendo executado');
  });
}
