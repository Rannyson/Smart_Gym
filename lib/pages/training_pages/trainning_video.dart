import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/appbar.dart';

class TranningVideo extends StatefulWidget {
  const TranningVideo({Key? key}) : super(key: key);

  @override
  State<TranningVideo> createState() => _TranningVideoState();
}

class _TranningVideoState extends State<TranningVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context),
      body: Container(
        margin: const EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 54, 49, 49),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.65,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 20, 20, 20),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 25, left: 15, right: 15),
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.35,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              CircleAvatar(
                                backgroundImage: AssetImage("logo.png"),
                                radius: 60,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(
                              Icons.add,
                              size: 25,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.more_vert,
                              size: 25,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const ProgressBar(
                          progress: Duration(milliseconds: 1000),
                          buffered: Duration(milliseconds: 2000),
                          total: Duration(seconds: 120),
                          progressBarColor: Colors.white,
                          bufferedBarColor: Colors.white,
                          thumbColor: Colors.white,
                          baseBarColor: Colors.white,
                          timeLabelTextStyle: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              iconSize: 50,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.skip_previous,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              iconSize: 50,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              iconSize: 50,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.skip_next,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            backButtom(),
          ],
        ),
      ),
    );
  }

  Widget backButtom() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.90,
      child: FloatingActionButton.extended(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          Navigator.pop(context);
        },
        label: const Text('Voltar',
            style: TextStyle(fontSize: 20, color: Colors.white)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
