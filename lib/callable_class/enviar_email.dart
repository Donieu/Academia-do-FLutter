class EnviarEmail {
  bool call(String email) {
    print('chamando método call');
    return enviar(email);
  }

  bool enviar(String email) {
    print('chamando método enviar');
    return true;
  }
}
