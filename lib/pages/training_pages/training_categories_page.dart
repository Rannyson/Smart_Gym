import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/training_pages/trannings_list.dart';

class TrainingPage extends StatelessWidget {
  const TrainingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height * 0.90,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 54, 49, 49),
        ),
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  trannings(context, "TREINO A"),
                  const SizedBox(width: 10),
                  trannings(context, "TREINO B"),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  trannings(context, "TREINO C"),
                  const SizedBox(width: 10),
                  trannings(context, "TREINO D"),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  trannings(context, "TREINO E"),
                  const SizedBox(width: 10),
                  trannings(context, "TREINO F"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget trannings(context, String label) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TrainningList(true)),
        );
      },
      child: CircleAvatar(
        radius: MediaQuery.of(context).size.width * 0.2,
        backgroundColor: Colors.white,
        // backgroundImage: const AssetImage('luffy.jpg'),
        child: Text(
          label,
          style: const TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
