import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/appbar.dart';
import 'package:intl/intl.dart';

class PerfilEditor extends StatefulWidget {
  const PerfilEditor({Key? key}) : super(key: key);

  @override
  State<PerfilEditor> createState() => _PerfilEditorState();
}

class _PerfilEditorState extends State<PerfilEditor> {
  List<TextEditingController> dateinput = [
    TextEditingController(),
    TextEditingController()
  ];
  List<bool> visibleDatesLabel = [true, true];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context),
      body: SingleChildScrollView(
        child: Container(
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage("perfil.jpg"),
                    radius: 50,
                  ),
                  const Text(
                    "Alterar foto",
                    style: TextStyle(color: Colors.white54),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        "Maria Maromba",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'lobster'),
                      ),
                      Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: 25,
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: ListView(
                      children: [
                        Column(
                          children: [
                            textBox("Digite seu objetivo",
                                MediaQuery.of(context).size.width * 0.9),
                            const SizedBox(height: 5),
                            //
                            datePicker("Seu aniversário", 0),
                            //
                            const SizedBox(height: 5),
                            datePicker("Data de início", 1),
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                textBox(
                                    "Altura",
                                    MediaQuery.of(context).size.width * 0.37,
                                    50,
                                    TextInputType.number),
                                textBox(
                                    "Peso",
                                    MediaQuery.of(context).size.width * 0.37,
                                    50,
                                    TextInputType.number),
                              ],
                            ),
                            const SizedBox(height: 5),
                            textBox("Faça suas observações...",
                                MediaQuery.of(context).size.width * 0.9, 100),
                          ],
                        ),
                      ],
                    ),
                  ),
                  confirmButtom(context)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget textBox(label, double widthBox,
      [double heightBox = 50, TextInputType inputType = TextInputType.text]) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.fromLTRB(30, 3, 20, 0),
      margin: const EdgeInsets.only(left: 10, right: 10),
      height: heightBox,
      width: widthBox,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: Colors.white,
          borderRadius: BorderRadius.circular(40)),
      child: TextField(
        keyboardType: inputType,
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

  Widget confirmButtom(context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height / 12,
      width: MediaQuery.of(context).size.width,
      child: FloatingActionButton.extended(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          Navigator.pop(context);
        },
        label: const Text(
          'CONFIRMAR',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }

  Widget datePicker(String label, int index) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.fromLTRB(30, 3, 20, 0),
      margin: const EdgeInsets.only(left: 10, right: 10),
      height: 50,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: Colors.white,
          borderRadius: BorderRadius.circular(40)),
      child: TextField(
        controller: dateinput[index],
        decoration: InputDecoration(
          labelText: visibleDatesLabel[index] ? label : null,
        ),
        readOnly: true,
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2101));

          if (pickedDate != null) {
            String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
            setState(() {
              dateinput[index].text = formattedDate;
              visibleDatesLabel[index] = !visibleDatesLabel[index];
            });
          }
        },
      ),
    );
  }
}
