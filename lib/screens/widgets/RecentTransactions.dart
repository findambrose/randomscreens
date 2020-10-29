import 'package:flutter/material.dart';

class ListViewContainerWidget extends StatelessWidget {
  final String imagePath, transaction, name;
  ListViewContainerWidget({
   this.imagePath, this.transaction, this.name
  }) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .35,
      child: Card(
        child: Column(
          children: <Widget>[
            ClipRRect(
              child: Container(
                  padding: EdgeInsets.only(top: 8),
                  child: Image.asset(
                    imagePath,
                    height: 50,
                  )),
              borderRadius: BorderRadius.circular(7),
            ),
            SizedBox(height: 2),
            Text(name),
            SizedBox(height: 2),
            Text(
              transaction,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}