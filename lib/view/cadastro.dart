import 'package:flutter/material.dart';
import 'tela_principal.dart';

// TELA PRINCIPAL
// Stateful Widget = stf + TAB
class TelaCadastro extends StatefulWidget {
  const TelaCadastro({Key? key}) : super(key: key);

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  //Atributos responsáveis por armazenar os valores
  //dos campos de texto
  var txtEmail = TextEditingController();
  var txtNome = TextEditingController();
  var txtSenha = TextEditingController();

  //Atributo responsável por identificar unicamente
  //o formulário da UI
  var form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CADASTRO'),
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
                    Icons.people_alt,
                    size: 100,
                    color: Colors.blue.shade900,
                  ),
                  const SizedBox(height: 30),
                  campoTexto('Nome Completo', txtNome),
                  const SizedBox(height: 10),
                  campoTexto('Email', txtEmail),
                  const SizedBox(height: 10),
                  campoTexto('Senha', txtSenha),
                  const SizedBox(height: 50),
                  botao('CADASTRAR'),
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
  //
  botao(rotulo) {
    return SizedBox(
      width: 250,
      height: 50,
      child: ElevatedButton(
        //comportamento
        onPressed: () {
          //Validação dos campos do formulário
          if (form.currentState!.validate()) {
            //efetuar o cálculo do IMC
            setState(() {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  duration: const Duration(seconds: 3),
                  elevation: 0,
                  content: Text(
                    'Casdastro realizado com sucesso',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blue.shade900,
                    ),
                  ),
                  margin: const EdgeInsets.fromLTRB(100, 0, 100, 20),
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.grey.shade400.withOpacity(0.3),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              );
            });
          }
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

  //
  // CAIXA DE DIÁLOGO
  //
  caixaDialogo(msg) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Cadastrar'),
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
                    txtNome.clear();
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
