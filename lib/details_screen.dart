import 'package:final_exam_c223154/FormScreen.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://picsum.photos/400/200"),
            SizedBox(height: 40,),
            Text("I am M Ahnaf Shakil"),
            SizedBox(height: 40,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Formscreen()));
            }, child: Text("Get Started")),
          ],
        ),
      ),
    );
  }
}