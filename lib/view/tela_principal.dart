import 'package:flutter/material.dart';
import 'package:flutter_run_club_001/view/convidar.dart';
import 'estatisticas.dart';
import 'sobre.dart';
import 'convidar.dart';
import 'loja.dart';
import 'iniciar.dart';
import 'comunidade.dart';

//TELA CONVITE
class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MENU PRINCIPAL'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
      ),

      backgroundColor: Colors.grey.shade200,

      //CORPO
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Container(
                width: 300,
                height: 300,
                child: Image.asset('lib/imagens/iniciar.jpg'),
              ),
              FlatButton(
                color: Colors.black,
                child: Text('INICIAR'),
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => TelaIniciar()));
                },
              ),
              SizedBox(height: 20),
              Container(
                width: 300,
                height: 300,
                child: Image.asset('lib/imagens/convidar.jpg'),
              ),
              SizedBox(height: 5),
              FlatButton(
                color: Colors.black,
                child: Text('CONVIDAR'),
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => TelaConvite()));
                },
              ),
              SizedBox(height: 20),
              Container(
                width: 300,
                height: 300,
                child: Image.asset('lib/imagens/comunidade.jpg'),
              ),
              SizedBox(height: 5),
              FlatButton(
                color: Colors.black,
                child: Text('COMUNIDADE'),
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => TelaComunidade()));
                },
              ),
              SizedBox(height: 20),
              Container(
                width: 300,
                height: 300,
                child: Image.asset('lib/imagens/loja.jpg'),
              ),
              SizedBox(height: 5),
              FlatButton(
                color: Colors.black,
                child: Text('LOJA'),
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => TelaLoja()));
                },
              ),
              SizedBox(height: 20),
              Container(
                width: 300,
                height: 300,
                child: Image.asset('lib/imagens/estatisticas.jpg'),
              ),
              SizedBox(height: 5),
              FlatButton(
                color: Colors.black,
                child: Text('ESTATISTICAS'),
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => TelaEstatisticas()));
                },
              ),
              SizedBox(height: 20),
              Container(
                width: 300,
                height: 300,
                child: Image.asset('lib/imagens/sobre.jpg'),
              ),
              SizedBox(height: 5),
              FlatButton(
                color: Colors.black,
                child: Text('SOBRE'),
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => TelaSobre()));
                },
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
