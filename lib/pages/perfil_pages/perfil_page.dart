import 'package:flutter/material.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({Key? key}) : super(key: key);

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height * 0.90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 54, 49, 49),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage("perfil.jpg"),
                  radius: 50,
                ),
                const Text(
                  "Maria Maromba",
                  style: TextStyle(
                      color: Colors.white, fontSize: 20, fontFamily: 'lobster'),
                ),
                Row(
                  children: const [
                    Text(
                      "Objetivos:",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
                const Text(
                  "Ser a Graziane Barbosa",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Idade:  29",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Início: 01/01/0001",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "IMC: 18",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Peso: 58",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Altura: 1.64",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      "Observações:",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
                SizedBox(
                  height: 170,
                  child: ListView(
                    children: const [
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sed porta lectus, scelerisque semper mauris. Pellentesque eget ornare dolor. Nulla faucibus leo vel est vulputate bibendum. Curabitur vitae nulla varius, rhoncus ligula non, sollicitudin lorem. Nullam sed congue magna, et lobortis magna. Mauris vitae iaculis quam. Quisque feugiat dolor vitae libero efficitur, quis tincidunt enim facilisis. Donec facilisis massa et urna elementum porttitor. Cras vel turpis finibus erat lacinia ullamcorper.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sed porta lectus, scelerisque semper mauris. Pellentesque eget ornare dolor. Nulla faucibus leo vel est vulputate bibendum. Curabitur vitae nulla varius, rhoncus ligula non, sollicitudin lorem. Nullam sed congue magna, et lobortis magna. Mauris vitae iaculis quam. Quisque feugiat dolor vitae libero efficitur, quis tincidunt enim facilisis. Donec facilisis massa et urna elementum porttitor. Cras vel turpis finibus erat lacinia ullamcorper.",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 20,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
