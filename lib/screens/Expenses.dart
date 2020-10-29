import 'package:flutter/material.dart';
import 'package:randomscreens/screens/widgets/CurvePainter.dart';

class Expenses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.white70,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Expenses"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
              //Chart
              //This container becomes the canvas
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .25,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                child: CustomPaint(
                  painter: CurvePainter(),
                ),
              ),
            ),

            Positioned(child: Text("\$1200"),
            top: 80,
            left: 160,

            )
              ],
            ),
            
            SizedBox(
              height: 15,
            ),
            Expanded(
                          child: Column(
                //List tile
                children: <Widget>[
                  Card(

                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.local_laundry_service, size: 30, color: Colors.redAccent,),
                          title: Text('Lunch & Dinner'),
                          subtitle: Text(
                            '4 transactions',
                            style: TextStyle(fontSize: 10),
                          ),
                          trailing: Text('\$450'),
                        ),
                        Container(
                          height: 8,
                          padding: EdgeInsets.fromLTRB(15, 0, 15, 3),
                          child: LinearProgressIndicator(
                            value: .70,
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.green),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Card(
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.local_mall, size: 30, color: Colors.redAccent,),
                          title: Text('Medical Allowances'),
                          subtitle: Text(
                            '3 transactions',
                            style: TextStyle(fontSize: 10),
                          ),
                          trailing: Text('\$330'),
                        ),
                        Container(
                          height: 8,
                          padding: EdgeInsets.fromLTRB(15, 0, 15, 3),
                          child: LinearProgressIndicator(
                            value: .35,
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 5),

                  Card(
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.card_giftcard, size: 30, color: Colors.redAccent,),
                          title: Text('Car Fuel'),
                          subtitle: Text(
                            '1 transaction',
                            style: TextStyle(fontSize: 10),
                          ),
                          trailing: Text('\$200'),
                        ),
                        Container(
                          height: 8,
                          padding: EdgeInsets.fromLTRB(15, 0, 15, 3),
                          child: LinearProgressIndicator(
                            value: .60,
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.green[300]),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Card(
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.restaurant, size: 30, color: Colors.redAccent,),
                          title: Text('House Rent'),
                          subtitle: Text(
                            '7 transactions',
                            style: TextStyle(fontSize: 10),
                          ),
                          trailing: Text('\$160'),
                        ),
                        Container(
                          height: 8,
                          padding: EdgeInsets.fromLTRB(15, 0, 15, 3),
                          child: LinearProgressIndicator(
                            value: .20,
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.red[300]),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
