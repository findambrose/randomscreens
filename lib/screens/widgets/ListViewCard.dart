import 'package:flutter/material.dart';

class ListViewCard extends StatelessWidget {
   final String imagePath, transaction, name;
  
  ListViewCard({ this.imagePath, this.transaction, this.name
    
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
    leading: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        imagePath,
        height: 50,
      ),
    ),
    title: Text(name),
    subtitle: Text(
      transaction,
      style: TextStyle(
          color: Colors.grey, fontSize: 10),
    ),
    trailing: RaisedButton(
      onPressed: null,
      color: Colors.yellow,
      textColor: Colors.white,
      child: Text('Send'),
    ),
        ),
      );
  }
}