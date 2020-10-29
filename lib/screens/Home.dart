import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                //first container reddish
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  height: MediaQuery.of(context).size.height * .3,
                  decoration: BoxDecoration(
                    color: Color(0xff9A1202),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(

                          
                          children: <Widget>[
                            Text(
                              '\$7,425',
                              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 7),  
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Text(
                                'Account balance',
                                style: TextStyle(fontSize: 10, color: Colors.white ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),

                        
                        Align(
                          alignment: Alignment.topRight, 
                          child: ClipRRect(   
                            borderRadius: BorderRadius.circular(8),                                    child: Container(
                            width: 40,
                            height: 40,
                            
                              
                            child: Image.asset('images/avatar.png'),

                            //  child: CircleAvatar(
                            //    radius: 5,
                            //    backgroundImage: AssetImage('/avatar'),
                            //    child: Text('Profile pic'),

                            //  ),
                          ),
                        ),
                        ),
                      ],
                    ),
                ), 
    

                //second container greyish
                Expanded(
                                  child: Container(
                    height: MediaQuery.of(context).size.height * .7,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    decoration: BoxDecoration(
                      color: Color(0xffEEEEEE),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 70),
                        Text('Activity'),
                        SizedBox(height: 2),
                        
                           Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                
                                width: MediaQuery.of(context).size.width * .3,
                                height: MediaQuery.of(context).size.width * .3,
                                child: Card(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 8),
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                           decoration: BoxDecoration(color: Colors.redAccent, 
                                           borderRadius: BorderRadius.circular(10)),
                                          child: IconButton(
                                              icon: Icon(
                                                Icons.add_a_photo,
                                                size: 30,
                                                color: Colors.white,
                                              ),
                                              onPressed: null),
                                        ),
                                        SizedBox(height: 4),
                                        Text('Transfers'),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * .3,
                                height: MediaQuery.of(context).size.width * .3,
                                child: Card(
                                  color: Colors.white,
                                  child: Container(
                                    padding: EdgeInsets.only(top: 8),
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          decoration: BoxDecoration(color: Colors.redAccent, 
                                           borderRadius: BorderRadius.circular(10)),
                                          
                                          child: IconButton(
                                              icon: Icon(
                                                Icons.shopping_cart,
                                                size: 30,
                                                color: Colors.white,
                                              ),
                                              onPressed: null),
                                        ),
                                        SizedBox(height: 4),
                                        Text('My Cart'),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * .3,
                                height: MediaQuery.of(context).size.width * .3,
                                child: Card(
                                  color: Colors.white,
                                  child: Container(
                                    padding: EdgeInsets.only(top: 8),
                                    child: Column(
                                      children: <Widget>[
                                        Container( 
                                           decoration: BoxDecoration(color: Colors.redAccent, 
                                           borderRadius: BorderRadius.circular(10)),
                                          child: IconButton(
                                              icon: Icon(
                                                Icons.payment,
                                                size: 30,
                                                color: Colors.white,
                                              ),
                                              onPressed: null),
                                        ),
                                        SizedBox(height: 4),
                                        Text('Payments'),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        
                        SizedBox(height: 7),
                        Text('Complete Verification'),
                        SizedBox(height: 7),
                        Container(
                         
                          child: Card(
                            color: Colors.white,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                 Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Text('75%',
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black54)),
                                      Text('5 out of 8 complete',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black87))
                                    ],
                                  ),
                               
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 7),

                                  height: 20,
                                  child: LinearProgressIndicator(
                                   value: .75,
                                    valueColor: AlwaysStoppedAnimation<Color>(Colors.purple),
                                    
                                    backgroundColor: Colors.blueAccent,
                                  ),
                                ),
                                SizedBox(height: 15),
                                Container(
                                  height: 125,
                                                                  child: ListTile(
                                      
                                      leading: Icon(Icons.person_pin_circle),
                                      title: Text('Profile Information'),
                                      subtitle: Text(
                                          'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to'),
                                    ),
                                ),
                                
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 100,
              right: 15,
              left: 15,
              height: 160,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(
                                  'Interest',
                                  style: TextStyle(fontSize: 7, fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                      foregroundColor: Color(0xff9A1202),
                                      radius: .3,
                                    ),
                                    SizedBox(width: 3),
                                    Text('\$1,460', style: TextStyle(fontWeight: FontWeight.bold),)
                                  ],
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  'Savings',
                                  style: TextStyle(fontSize: 7, fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text('\$2,730', style: TextStyle(fontWeight: FontWeight.bold),),
                                    CircleAvatar(
                                      foregroundColor: Colors.green,
                                      radius: .3,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        color: Colors.black45,
                        height: .5,
                        width: MediaQuery.of(context).size.width,
                      ),
                      SizedBox(height: 8),
                      Text(
                          'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to'),
                      SizedBox(height: 8),
                      Text(
                        'Tell me more',
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
