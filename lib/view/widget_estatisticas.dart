import 'package:flutter/material.dart';
import 'sobre.dart';
import 'convidar.dart';

class WidgetEstatisticas extends StatelessWidget {
  //Atributos que serão usados para receber
  //dados através do construtor
  final String nome;
  final String imagem;

  const WidgetEstatisticas(this.nome, this.imagem, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(30, 30, 30, 0),

      //espaçamento interno
      padding: const EdgeInsets.all(15),

      //bordas
      decoration: BoxDecoration(
        border: Border.all(
          width: 2.5,
          color: Colors.black38,
        ),
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(20),
      ),

      width: MediaQuery.of(context).size.width * 0.90,
      height: 450,

      child: Column(
        children: [
          Text(
            nome,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 42, 0, 254),
            ),
          ),
          // IMAGEM
          Image.asset(
            imagem,
            scale: 1,
          ),
        ],
      ),
    );
  }
}
