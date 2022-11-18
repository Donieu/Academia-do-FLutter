// aula 103 - toda leitura de arquivo é feita com o dart:io
import 'dart:io';

Future<void> main() async {
  var file = File('lib/async_leitura_de arquivos/file2.txt');
  //Para fazer a leitura, há 3 formas diferentes.

  // //Leitura síncrona
  // var fileData = file.readAsStringSync();
  // print(fileData);
  // // //Leitura assíncrona
  // var fileData2 = await file.readAsString();
  // print(fileData2);
  // // //leitura Linha Síncrona
  // var fileLista = file.readAsLinesSync();
  // print(fileLista[2]);
  // //leitura Linha Assíncrona
  // var fileLista2 = await file.readAsLines();
  // print(fileLista2[2]);

  var file2 = File('lib/async_leitura_de arquivos/file2.txt');
  // await file2.writeAsString('Amo muuuuuuuito\n', mode: FileMode.append); // paranão sobescrever

  var listNomes = ['Daniel', 'Breno', 'Martins', 'Campos'];
  var file3 = File('lib/async_leitura_de arquivos/file3.txt');
  var writefile = file3.openWrite();

  listNomes.forEach((name) => writefile.write('$name\n'));
}
