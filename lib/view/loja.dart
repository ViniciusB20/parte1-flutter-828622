import 'package:flutter/material.dart';
import 'widget_loja.dart';

//Stateless = stl+TAB
class TelaLoja extends StatelessWidget {
  const TelaLoja({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LOJA'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 0, 72, 255),
      ),
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: const [
              WidgetLoja("Cupom Desconto 20%", "lib/imagens/netshoes.jpg"),
              WidgetLoja("Cupom Desconto 30%", "lib/imagens/acaii.jpg"),
              WidgetLoja("Cupom Desconto 50%", "lib/imagens/centauro.jpg"),
              WidgetLoja("Recarga Celular", "lib/imagens/recarga.jpg"),
            ],
          ),
        ),
      ),
    );
  }
}
