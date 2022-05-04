import 'package:flutter/material.dart';

//TELA SOBRE
class TelaSobre extends StatelessWidget {
  const TelaSobre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //BARRA DE TÍTULO
      appBar: AppBar(
        title: const Text('SOBRE'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
      ),

      backgroundColor: Colors.grey.shade200,

      //CORPO
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                child: Image.asset('lib/imagens/IMG_2225.jpg'),
              ),
            ],
          ),
          const Text('NOME: Vinicius De Carvalho Bueno',
              style: TextStyle(fontSize: 25)),
          SizedBox(height: 10),
          const Text('CODIGO: 828622', style: TextStyle(fontSize: 25)),
          SizedBox(height: 10),
          const Text('TEMA: Esportes', style: TextStyle(fontSize: 25)),
          SizedBox(height: 10),
          const Text(
            'OBJETIVO: Aplicativo feito para incentivar as pessoas a praticar caminhada, com esse app o usuário pode fazer o monitoramento de suas caminhadas e corridas, com isso a cada caminhada ele vai acumulando pontos que podem ser trocados por descontos, cupons entre outras coisas. O App também tem uma comunidade para criar seus grupos de caminhada, e também conta com um sistema de convite de amigos, que pode te gerar mais pontos para trocar na lojinha.',
            style: TextStyle(fontSize: 25),
          ),
        ],
      ),
    );
  }
}
