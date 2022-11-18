import 'package:dart_poo/callable_class/enviar_email.dart';

void main() {
  var enviarEmail = EnviarEmail();

  enviarEmail('dbreno09@gmail.com');

  enviarEmail.enviar('dbreno09@gmail.com');
}
