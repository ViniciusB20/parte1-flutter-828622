import 'package:flutter/material.dart';
import 'widget_estatisticas.dart';

//Stateless = stl+TAB
class TelaEstatisticas extends StatelessWidget {
  const TelaEstatisticas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ESTATISTICAS'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 0, 72, 255),
      ),
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: const [
              WidgetEstatisticas("Caminhada Vespertina - 01/05/2022",
                  "lib/imagens/caminhada1.jpg"),
              WidgetEstatisticas("Caminhada Diurna - 02/05/2022",
                  "lib/imagens/caminhada2.jpg"),
              WidgetEstatisticas("Caminhada Vespertina - 03/05/2022",
                  "lib/imagens/caminhada3.png"),
            ],
          ),
        ),
      ),
    );
  }
}
