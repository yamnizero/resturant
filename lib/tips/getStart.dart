import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturant/pages/config.dart';
import 'package:resturant/tips/tips.dart';

class GetStart extends StatefulWidget {
  @override
  _GetStartState createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
   double myheight = MediaQuery.of(context).size.height/3;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            new Container(
              height: myheight * 2,
              decoration: BoxDecoration(

                image: DecorationImage(
                  image: AssetImage('assets/images/b2.jpg'),
                    fit: BoxFit.cover
                )
              ),
            ),
            new Container(
              padding: EdgeInsets.all(10.0),
              height: myheight,
              decoration: BoxDecoration(
                  color: primeryColor,
                boxShadow:[BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0,3),
                )],
                borderRadius: BorderRadius.only(topLeft:Radius.circular(20),
                    topRight:Radius.circular(20)
                )
              ),
              child: ListView(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment:CrossAxisAlignment.start ,
                    textDirection:TextDirection.rtl,
                    children: [
                    Text('اشهي الماكولات',
                    textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.white,
                          fontSize: 24.0,
                      fontWeight:FontWeight.bold
                      ),
                    ),
                    Text('افضل الماكولات تجدونها في مطعمنا ',
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.white,
                          fontSize: 16.0,
                      ),
                    ),
                      Padding(
                        padding:  EdgeInsets.only(top:20.0 ),
                        child: GestureDetector(
                          onTap: (){
                          Navigator.push(context,
                               MaterialPageRoute(
                                   builder: (context){
                                     return Tips();
                                   }
                                   ));
                          },
                          child: Container(
                            padding: EdgeInsets.only(
                              left: 30.0,
                              right: 30.0,
                              bottom: 5.0,
                              top: 7.0
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                              BorderRadius.circular(20.0)
                            ),
                              child: Text('ابدا من هنا',
                                style: TextStyle(

                                    fontSize: 20.0,

                                ),)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
