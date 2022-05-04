import 'package:flutter/material.dart';

//TELA SOBRE
class TelaIniciar extends StatelessWidget {
  const TelaIniciar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //BARRA DE TÍTULO
      appBar: AppBar(
        title: const Text('INICIAR'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
      ),

      backgroundColor: Colors.grey.shade200,

      //CORPO
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 520,
                height: 600,
                child: Image.asset('lib/imagens/mapa.jpg'),
              ),
            ],
          ),
          SizedBox(height: 10),
          botao('INICIAR TRAJETO'),
        ],
      ),
    );
  }
}

// BOTÃO
botao(rotulo) {
  return SizedBox(
    width: 300,
    height: 50,
    child: ElevatedButton(
      onPressed: () {},
      //aparência
      child: Text(
        rotulo,
        style: const TextStyle(fontSize: 24),
      ),
      style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(255, 45, 129, 255),
      ),
    ),
  );
}
