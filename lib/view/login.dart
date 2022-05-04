import 'package:flutter/material.dart';
import 'tela_principal.dart';
import 'cadastro.dart';

//
// TELA PRINCIPAL
// Stateful Widget = stf + TAB
class TelaLogin extends StatefulWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  //Atributos responsáveis por armazenar os valores
  //dos campos de texto
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();

  //Atributo responsável por identificar unicamente
  //o formulário da UI
  var form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RUN CLUB'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
      ),
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Center(
            //
            // FORMULÁRIO
            //
            child: Form(
              key: form,
              child: Column(
                children: [
                  Icon(
                    Icons.run_circle_outlined,
                    size: 100,
                    color: Colors.blue.shade900,
                  ),
                  const SizedBox(height: 30),
                  campoTexto('Login', txtEmail),
                  const SizedBox(height: 10),
                  campoTexto('Senha', txtSenha),
                  const SizedBox(height: 50),
                  botao('LOGIN'),
                  SizedBox(height: 20),
                  botao2('CADASTRAR'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  //
  // CAMPO DE TEXTO

  campoTexto(rotulo, variavel) {
    return TextFormField(
      //Associar a variável de controle
      controller: variavel,
      //Aparência
      style: TextStyle(
        fontSize: 32,
        color: Colors.grey.shade900,
      ),
      //Teclado numérico
      keyboardType: TextInputType.number,
      //Senha
      obscureText: false,
      //Quant. máxima de caracteres
      decoration: InputDecoration(
        labelText: rotulo,
        labelStyle: TextStyle(
          fontSize: 24,
          color: Colors.grey.shade600,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      //
      // Validação da entrada do usuário
      //
    );
  }

  // BOTÃO
  botao(rotulo) {
    return SizedBox(
      width: 200,
      height: 50,
      child: ElevatedButton(
        //comportamento
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => TelaPrincipal()),
          );
          //Validação dos campos do formulário
        },
        //aparência
        child: Text(
          rotulo,
          style: const TextStyle(fontSize: 24),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.blue.shade900,
        ),
      ),
    );
  }

// BOTÃO 222222
  //
  botao2(rotulo) {
    return SizedBox(
      width: 250,
      height: 50,
      child: ElevatedButton(
        //comportamento
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => TelaCadastro()),
          );
          print('Fazer o Cadastro');
          //Validação dos campos do formulário
        },
        //aparência
        child: Text(
          rotulo,
          style: const TextStyle(fontSize: 24),
        ),
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 161, 13, 18),
        ),
      ),
    );
  }

  //
  // CAIXA DE DIÁLOGO
  //
  caixaDialogo(msg) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Calculadora IMC'),
          content: Text(
            msg,
            style: const TextStyle(fontSize: 24),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  setState(() {
                    txtEmail.clear();
                    txtSenha.clear();
                  });
                },
                child: const Text('fechar')),
          ],
        );
      },
    );
  }
}
