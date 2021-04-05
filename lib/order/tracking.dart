import 'dart:developer';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Tracking extends StatefulWidget {

  @override
  _TrackingState createState() => _TrackingState();
}

class _TrackingState extends State<Tracking> {
  Widget getInfoDelivery(){
    return Container(
      child: ListTile(
        title: Text('الاسم'),
        subtitle: Text('محمد جمال',style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
          color: Colors.black,
        ),),
        leading: Container(
          width: 75.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            image: DecorationImage(
              image: AssetImage('assets/product/pro3.jpg'),
              fit: BoxFit.cover,
            )
          ),
        ),
        trailing: Container(
          width: 50.0,
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.star_border,color: Colors.red,),
                  Text('4.0',style: TextStyle(color: Colors.red),),
                ],
              ),
              Text('1440',style: TextStyle(color: Colors.grey),),

            ],
          ),
        ),
      ),
    );
  }

  Widget getTimeLine(){
    double heightCon =70.0;
    return Container(
      color: Colors.grey[50],
      margin: EdgeInsets.only(top: 10.0,bottom: 80.0),
      child: Column(
        children: [
          Container(
            height: heightCon,
            child: TimelineTile(
              lineXY: 0.2,
              indicatorStyle: IndicatorStyle(height: 1.0),
              alignment:TimelineAlign.manual,
              endChild: Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text('تأكيد الطلبية',style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),),
                    Icon(Icons.restaurant,
                      color: Colors.red,)
                  ],
                ),
              ),
            ),
          ),
          Container(
            height:heightCon,
            child: TimelineTile(
              lineXY: 0.2,
              indicatorStyle: IndicatorStyle(height: 1.0),
              alignment:TimelineAlign.manual,
              endChild: Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text('تجهيز الطلبية',style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),),
                    Icon(Icons.restaurant,
                      color: Colors.red,)
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: heightCon,
            child: TimelineTile(
              lineXY: 0.2,
              indicatorStyle: IndicatorStyle(height: 1.0),
              alignment:TimelineAlign.manual,
              endChild: Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text('تم تجهيز في المطعم',style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),),
                    Icon(Icons.restaurant,
                      color: Colors.red,)
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: heightCon,
            child: TimelineTile(
              lineXY: 0.2,
              indicatorStyle: IndicatorStyle(height: 1.0),
              alignment:TimelineAlign.manual,
              endChild: Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text('الدليفري استلم الطلبية',style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),),
                    Icon(Icons.restaurant,
                      color: Colors.red,)
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: heightCon,
            child: TimelineTile(
              lineXY: 0.2,
              indicatorStyle: IndicatorStyle(height: 1.0),
              alignment:TimelineAlign.manual,
              endChild: Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text('الدليفري قريب من المكان',style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),),
                    Icon(Icons.restaurant,
                      color: Colors.red,)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: InkWell(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back_ios,color: Colors.black,),
        ),
        backgroundColor: Colors.white,
        title: Text('  تتبع الطلبية'
          ,style: TextStyle(
              color: Colors.black
          ),),
        actions: [
              InkWell(
                onTap: (){},
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(

                    children: [
                    Text('محادثة',style: TextStyle(
                      color: Colors.red,
                      fontSize: 20.0
                    ),),
                      Icon(Icons.chat,color: Colors.red,)
            ],
                  ),
                )
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: 30.0)),
          Text('الوقت المقدر لاستلام الطلبية',
          textAlign: TextAlign.center,
          style: TextStyle(

            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),),
          Text('05:30:00',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),),
          Padding(padding: EdgeInsets.all(15.0),
          child: Divider(color: Colors.grey[170],),
          ),
           //------Start---
          getInfoDelivery(),
          getTimeLine(),
          //------End---
        ],
      ),
      bottomNavigationBar: Container(
        child: MaterialButton(
          onPressed: (){},
          child: Container(
            padding: EdgeInsets.all(5.0),
            width: MediaQuery.of(context).size.width,
           child:  Text('الغاء الطلبية ',
             textAlign: TextAlign.center,
             style: TextStyle(
             fontSize: 16.0,
               fontWeight: FontWeight.bold
           ),),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }

}

