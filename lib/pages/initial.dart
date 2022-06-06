import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/perfil_pages/perfil_page.dart';
import 'package:flutter_application_3/pages/settings_page.dart';
import 'package:flutter_application_3/pages/training_pages/training_categories_page.dart';
import 'package:flutter_application_3/pages/training_pages/trannings_list.dart';
import '../components/appbar.dart';
import 'home_page.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  int currentIndex = 0;
  List<Widget> listPages = [
    const HomePage(),
    TrainningList(),
    const TrainingPage(),
    const PerfilPage(),
    const SettingsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context),
      body: listPages[currentIndex],
      bottomNavigationBar: bottomNavigationBar(),
    );
  }

  BottomNavigationBar bottomNavigationBar() {
    return BottomNavigationBar(
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white10,
      currentIndex: currentIndex,
      onTap: changePageNavgationBar,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.black),
        BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Pesquisar",
            backgroundColor: Colors.black),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            backgroundColor: Colors.black,
            backgroundImage: AssetImage("gym.png"),
            radius: 25,
          ),
          label: "Treinos",
          backgroundColor: Colors.black,
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Perfil",
            backgroundColor: Colors.black),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Configurações",
            backgroundColor: Colors.black),
      ],
    );
  }

  void changePageNavgationBar(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
