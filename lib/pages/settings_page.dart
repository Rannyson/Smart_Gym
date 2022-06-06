import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/configs_page.dart';
import 'package:flutter_application_3/pages/login_page.dart';
import 'package:flutter_application_3/pages/perfil_pages/perfil_editor_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height * 0.90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 54, 49, 49),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('perfil.jpg'),
                  ),
                ],
              ),
              const Text(
                "Maria Maromba",
                style: TextStyle(
                    color: Colors.white, fontSize: 20, fontFamily: 'lobster'),
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                child: Column(
                  children: [
                    accountSettingButtons(
                        '3', context, "EDITAR PERFIL", Colors.white),
                    accountSettingButtons(
                        '4', context, "CONFIG. DA CONTA", Colors.white),
                  ],
                ),
              ),
              logoutButton(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget accountSettingButtons(String index, context, String label, Color color,
      [double scale = 1]) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height / 12,
      width: MediaQuery.of(context).size.width / scale,
      child: FloatingActionButton.extended(
        heroTag: index,
        backgroundColor: color,
        onPressed: () {
          label == 'EDITAR PERFIL'
              ? Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PerfilEditor()),
                )
              : label == 'CONFIG. DA CONTA'
                  ? Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ConfigurationPage()),
                    )
                  : null;
        },
        label: Text(
          label,
          style: const TextStyle(fontSize: 20, color: Colors.black),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }

  Widget logoutButton(context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height / 12,
      width: MediaQuery.of(context).size.width,
      child: FloatingActionButton.extended(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage()),
          );
        },
        label: const Text(
          'LOGOUT',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
