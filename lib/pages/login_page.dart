import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/initial.dart';
import 'package:flutter_application_3/pages/sign_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.25,
            height: MediaQuery.of(context).size.height * 0.25,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("logo.png")),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 40,
              right: 40,
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 10),
                textBox('E-mail', false),
                const SizedBox(height: 10),
                textBox('Senha', true),
                const SizedBox(height: 10),
                //
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: FloatingActionButton.extended(
                    backgroundColor: Theme.of(context).primaryColor,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const InitialPage()),
                      );
                    },
                    label: const Text('Continuar',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignPage()),
                );
              },
              child: const Text(
                "Não tem conta? Clique aqui para criar",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }

  Widget textBox(String label, bool obscure) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.fromLTRB(30, 3, 20, 0),
      margin: const EdgeInsets.only(left: 10, right: 10),
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: Colors.white,
          borderRadius: BorderRadius.circular(40)),
      child: TextField(
        obscureText: obscure,
        keyboardType: TextInputType.emailAddress,
        cursorColor: Colors.black,
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: label,
          hintStyle: const TextStyle(color: Colors.black),
        ),
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
