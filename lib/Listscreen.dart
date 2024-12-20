import 'package:flutter/material.dart';

class Listscreen extends StatelessWidget {
  final List<Map<String, String>> data;

   Listscreen({required this.data});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Screen'),),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(data[index]['name']!),
            subtitle: Text(data[index]['studentID']!),
            trailing: IconButton(
               icon: Icon(Icons.delete),
              onPressed: (){
              },
            ),
          );
        },
      ),
    );
  }
}