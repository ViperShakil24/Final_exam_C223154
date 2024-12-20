import 'package:final_exam_c223154/Listscreen.dart';
import 'package:flutter/material.dart';

class Formscreen extends StatelessWidget {
final TextEditingController studentIDcontroller= TextEditingController();
final TextEditingController namecontroller= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: studentIDcontroller,
              decoration: InputDecoration(labelText: "Student Id"),
            ),
            TextField(
              controller: namecontroller,
              decoration: InputDecoration(labelText: "Name"),
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Listscreen(
                data: [
                    {
                     'studentId': studentIDcontroller.text,
                     'name': namecontroller.text,
                    }
                  ],
              )));
             },
             child: const Text("save"))
          ],
        ),
      ),
    );

  }
}