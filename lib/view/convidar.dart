import 'package:flutter/material.dart';

//TELA CONVITE
class TelaConvite extends StatelessWidget {
  const TelaConvite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CONVIDAR'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
      ),

      backgroundColor: Colors.grey.shade200,

      //CORPO
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                child: Image.asset('lib/imagens/envelope.png'),
              ),
            ],
          ),
          const Text('CÓDIGO CONVITE: GC45RP', style: TextStyle(fontSize: 32)),
          SizedBox(height: 30),
          const Text('COMPARTILHE SEU CÓDIGO:', style: TextStyle(fontSize: 32)),
          SizedBox(height: 5),
          botao('FACEBOOK'),
          SizedBox(height: 5),
          botao('WHATSAPP'),
          SizedBox(height: 5),
          botao('E-MAIL'),
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
