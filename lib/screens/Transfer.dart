import 'package:flutter/material.dart';
import 'package:randomscreens/screens/widgets/ListViewCard.dart';
import 'package:randomscreens/screens/widgets/ListViewCardNoButton.dart';
import 'package:randomscreens/screens/widgets/RecentTransactions.dart';
import 'package:randomscreens/screens/widgets/TopButton.dart';

class Transfer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F1F1),
      appBar: AppBar(
        title: Text('Transfer'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: <Widget>[
          Container(
            //Reddish section
            padding: EdgeInsets.all(10),
            height: 73,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(17),
                    bottomRight: Radius.circular(17))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TopButton(
                  icon: Icon(Icons.add_call, color: Color(0xfffcfcfc),),
                  text: 'Mpesa',
                ),
                TopButton(
                  icon: Icon(Icons.payment, color: Color(0xfffcfcfc),),
                  text: 'Skrill',
                ),
                TopButton(
                  icon: Icon(Icons.card_membership, color: Color(0xfffcfcfc),),
                  text: 'Paypal',
                ),
                TopButton(
                  icon: Icon(Icons.mobile_screen_share , color: Color(0xfffcfcfc),),
                  text: 'Mobile',
                ),
              ],
            ),
          ),
          Container(
            //Greyish content
            padding: EdgeInsets.all(10),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Recent',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                SizedBox(
                  height: 115,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      ListViewContainerWidget(
                        name: 'Harley',
                        imagePath: 'images/avatar.png',
                        transaction: '5 transactions',
                      ),
                      SizedBox(width: 5),
                      ListViewContainerWidget(
                         name: 'Ambrose',
                        imagePath: 'images/avatar.png',
                        transaction: '1 transaction',
                      ),
                      SizedBox(width: 5),
                      ListViewContainerWidget(
                         name: 'Chris',
                        imagePath: 'images/avatar.png',
                        transaction: '3 transactions',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
               
              ],
            ),
          ),
           Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(color: Color(0xfffcfcfc)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('All Contacts',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: RaisedButton.icon(
                            onPressed: () {},
                            color: Color(0xfff1f1f1),
                            icon: Icon(Icons.search),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            label: Text('Search by name or email')),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 220,
                        child: Padding(
                          padding: EdgeInsets.only(left: 0),
                          child: ListView(
                            children: <Widget>[
                              ListViewCard(
                                imagePath: 'images/avatar.png',
                                name: 'Harley Sanders',
                                transaction: '5 transactions',
                              ),
                              ListViewCard(
                                imagePath: 'images/avatar.png',
                                name: 'Ambrose Kyusya',
                                transaction: '5 transactions',
                              ),
                              ListViewCardNoButton(
                                imagePath: 'images/avatar.png',
                                name: 'Chris Kyusya',
                                transaction: '3 transactions',
                              ),
                              
                              
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}

