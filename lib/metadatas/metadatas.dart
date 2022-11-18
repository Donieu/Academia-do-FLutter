import 'dart:mirrors';
import 'package:dart_poo/metadatas/fazer.dart';
import 'pessoa_metadata.dart';

void main() {
  final p1 = Pessoa();

  var instanceMirror = reflect(p1);
  var classMirror = instanceMirror.type;

  // ignore: avoid_function_literals_in_foreach_calls
  classMirror.metadata.forEach((annotation) {
    var instanceAnnotation = annotation.reflectee;
    if (instanceAnnotation is Fazer) {
      print('Quem: ${instanceAnnotation.quem}');
      print('O que? ${instanceAnnotation.oque}');
    }
  });

  classMirror.declarations
    ..values.forEach((declarationMirror) {
      if (declarationMirror is VariableMirror) {
        declarationMirror.metadata.forEach((annotation) {
          var instanceAnnotation = annotation.reflectee;
    if (instanceAnnotation is Fazer) {
      print('Quem: ${instanceAnnotation.quem}');
      print('O que? ${instanceAnnotation.oque}');
    }
        });
      } else if (declarationMirror is MethodMirror) {}
    });
}
