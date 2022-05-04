import 'package:flutter/material.dart';

//TELA SOBRE
class TelaComunidade extends StatelessWidget {
  const TelaComunidade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //BARRA DE TÍTULO
      appBar: AppBar(
        title: const Text('COMUNIDADE'),
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
                width: 400,
                height: 400,
                child: Image.asset('lib/imagens/comunidadeAviso.jpg'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
