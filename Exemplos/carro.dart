class Carro {
  final int velocidadeMaxima;
  int _velocidadeAtual;

  //contrutor da minha classe que inicializa os meus atributos
  Carro(this.velocidadeMaxima, [this._velocidadeAtual = 0]);

  int get velocidadeAtual {
    return this._velocidadeAtual;
  }

  void set velocidadeAtual(int novaVelocidade) {
    bool diferenca_valida = (_velocidadeAtual - novaVelocidade).abs() <= 5;
    if (diferenca_valida &&
        novaVelocidade >= 0 &&
        this._velocidadeAtual <= this.velocidadeMaxima) {
      this._velocidadeAtual = novaVelocidade;
    }
  }

  int acelerar() {
    if ((_velocidadeAtual + 5) <= velocidadeMaxima)
      _velocidadeAtual += 5;
    else
      _velocidadeAtual = velocidadeMaxima;
    return _velocidadeAtual;
  }

  int frear() {
    if (_velocidadeAtual - 5 >= 0)
      _velocidadeAtual -= 5;
    else
      _velocidadeAtual = 0;
    return _velocidadeAtual;
  }

  bool estaNoLimite() => _velocidadeAtual == velocidadeMaxima;
  bool estaParado() => _velocidadeAtual == 0;
}
