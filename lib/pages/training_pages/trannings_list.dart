// ignore_for_file: no_logic_in_create_state, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/appbar.dart';
import 'package:flutter_application_3/pages/training_pages/trainning_video.dart';

class TrainningList extends StatefulWidget {
  final bool visibleAppbar;
  TrainningList([this.visibleAppbar = false]);

  @override
  State<TrainningList> createState() => _TrainningListState(visibleAppbar);
}

class _TrainningListState extends State<TrainningList> {
  final bool visibleAppbar;
  _TrainningListState(this.visibleAppbar);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: visibleAppbar ? appbar(context) : null,
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height * 0.90,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 54, 49, 49),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                child: ListView(
                  children: [
                    exercicesVideosList("EXERCÍCIO"),
                    const SizedBox(height: 10),
                    exercicesVideosList("EXERCÍCIO"),
                    const SizedBox(height: 10),
                    exercicesVideosList("EXERCÍCIO"),
                    const SizedBox(height: 10),
                    exercicesVideosList("EXERCÍCIO"),
                    const SizedBox(height: 10),
                    exercicesVideosList("EXERCÍCIO"),
                    const SizedBox(height: 10),
                    exercicesVideosList("EXERCÍCIO"),
                    const SizedBox(height: 10),
                    exercicesVideosList("EXERCÍCIO"),
                    const SizedBox(height: 10),
                    exercicesVideosList("EXERCÍCIO"),
                    const SizedBox(height: 10),
                    exercicesVideosList("EXERCÍCIO"),
                    const SizedBox(height: 10),
                    exercicesVideosList("EXERCÍCIO"),
                    const SizedBox(height: 10),
                    exercicesVideosList("EXERCÍCIO"),
                    const SizedBox(height: 10),
                    exercicesVideosList("EXERCÍCIO"),
                    const SizedBox(height: 10),
                    exercicesVideosList("EXERCÍCIO"),
                    const SizedBox(height: 10),
                    exercicesVideosList("EXERCÍCIO"),
                    const SizedBox(height: 10),
                    exercicesVideosList("EXERCÍCIO"),
                    const SizedBox(height: 10),
                    exercicesVideosList("EXERCÍCIO"),
                    const SizedBox(height: 10),
                    exercicesVideosList("EXERCÍCIO"),
                    const SizedBox(height: 10),
                    exercicesVideosList("EXERCÍCIO"),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget exercicesVideosList(String label) {
    return GestureDetector(
      onTap: () {
        setState(() {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TranningVideo()),
          );
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(40)),
            child: Text(
              label,
              textAlign: TextAlign.center,
            ),
          ),
          const Icon(
            Icons.play_circle,
            color: Colors.red,
            size: 40,
          )
        ],
      ),
    );
  }
}
