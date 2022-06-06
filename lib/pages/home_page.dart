import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> expanded = [false, false, false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
          height: MediaQuery.of(context).size.height * 0.90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 54, 49, 49),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  blackButtom("PERSONAL", "person.png"),
                  blackButtom("NOVO TREINO", "new.png"),
                ],
              ),
              const SizedBox(height: 50),
              const Text(
                "TREINOS",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: ListView(
                  children: [
                    exercisesListDays(0, "SEGUNDA-FEIRA"),
                    exercisesListDays(1, "TERÇA-FEIRA"),
                    exercisesListDays(2, "QUARTA-FEIRA"),
                    exercisesListDays(2, "QUINTA-FEIRA"),
                    exercisesListDays(4, "SEXTA-FEIRA"),
                    exercisesListDays(5, "SÁBADO"),
                    exercisesListDays(6, "DOMINGO"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget exercisesListDays(int index, String weekDay) {
    return GestureDetector(
      onTap: () {
        setState(() {
          expanded[index] = !expanded[index];
        });
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        height: expanded[index] ? 300 : 80,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromARGB(255, 196, 196, 196),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: expanded[index]
                ? MainAxisAlignment.spaceAround
                : MainAxisAlignment.center,
            children: [
              Text(
                weekDay,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              expanded[index]
                  ? const Text(
                      "Agachamento 5 x 8-10 reps - Intervalo 45\" a 1\" ",
                      style: TextStyle(fontSize: 15))
                  : const SizedBox(),
              expanded[index]
                  ? const Text(
                      "Agachamento 5 x 8-10 reps - Intervalo 45\" a 1\" ",
                      style: TextStyle(fontSize: 15))
                  : const SizedBox(),
              expanded[index]
                  ? const Text(
                      "Agachamento 5 x 8-10 reps - Intervalo 45\" a 1\" ",
                      style: TextStyle(fontSize: 15))
                  : const SizedBox(),
              expanded[index]
                  ? const Text(
                      "Agachamento 5 x 8-10 reps - Intervalo 45\" a 1\" ",
                      style: TextStyle(fontSize: 15))
                  : const SizedBox(),
              expanded[index]
                  ? const Text(
                      "Agachamento 5 x 8-10 reps - Intervalo 45\" a 1\" ",
                      style: TextStyle(fontSize: 15))
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget blackButtom(String label, String image) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(image),
          ),
        ),
        height: 80,
        width: 80,
      ),
      const SizedBox(height: 5),
      Text(
        label,
        style: const TextStyle(color: Colors.white),
      )
    ],
  );
}
