import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Shopping extends StatefulWidget {
  @override
  _ShoppingState createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
   Widget headerBuild(){
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Row(
        children: [
          //----------------back
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(
                color: Colors.grey[100],
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0,1)
              )],
              borderRadius:
              BorderRadius.circular(15.0)
            ),
            child: IconButton(
                icon: Icon(Icons.arrow_back_ios,
                color: Colors.red,
                ),
                onPressed: (){
                  Navigator.of(context).pop();
                }),
          ),
          Expanded(
            child: Text(''),),
          //------Shopping Cart------
        ],
      ),
    );
  }
    var myprod =[
     {
           'pro_id':'1',
           ' pro_name':'مشاوي',
            'pro_price':'1200',
            'pro_qty':'3',
           ' pro_image':'assets/category/cat1.png'
   },
     {
       'pro_id':'1',
       ' pro_name':'مشاوي',
       'pro_price':'1200',
       'pro_qty':'3',
       ' pro_image':'assets/category/cat1.png'
     },
     {
       'pro_id':'1',
       ' pro_name':'مشاوي',
       'pro_price':'1200',
       'pro_qty':'3',
       ' pro_image':'assets/category/cat1.png'
     },
      {
        'pro_id':'1',
        ' pro_name':'مشاوي',
        'pro_price':'1200',
        'pro_qty':'3',
        ' pro_image':'assets/category/cat1.png'
      },

   ];

   void _showSheetMessage(context)
   {
     showModalBottomSheet(
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.only(
           topLeft: Radius.circular(15.0),
           topRight: Radius.circular(15.0),
         )
       ),
         context: context ,
         builder: (BuildContext bc){
           return Container(
             child: ListView(
               children: [
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(
                       margin: EdgeInsets.only(top: 30.0,bottom: 30.0),
                         child:
                         Icon(Icons.done,
                           size: 55.0,
                           color: Colors.red,),
                     ),
                     Text('شكرا لطلبك',
                     style: TextStyle(
                       color: Colors.red,
                       fontSize: 25.0,
                       fontWeight: FontWeight.bold
                     ),),
                     Text('يمكنك تتبع الطلبية من خلال الضغط على الزر في الاسفل',
                       style: TextStyle(
                           color: Colors.grey,
                           fontSize: 16.0
                       ),),
                     Padding(
                         padding: EdgeInsets.only(top: 50.0),
                     child: MaterialButton(
                       child: Container(
                         margin: EdgeInsets.all(15.0),
                         width: MediaQuery.of(context).size.width,
                         child:Text('تابع الطلبية',
                         textAlign: TextAlign.center,
                         style: TextStyle(
                           fontSize: 20.0,
                           color: Colors.white,
                         ),) ,
                         decoration: BoxDecoration(
                           color: Colors.red,
                           borderRadius: BorderRadius.circular(15.0),
                         ),
                       ),
                       onPressed: (){

                       },

                     ),
                     ),
                     Padding(
                       padding: EdgeInsets.only(top: 5.0),
                       child: MaterialButton(
                         child: Container(
                           margin: EdgeInsets.all(15.0),
                           width: MediaQuery.of(context).size.width,
                           child:Text('الانتقال الى المأكولات',
                             textAlign: TextAlign.center,
                             style: TextStyle(
                               fontSize: 20.0,
                             ),) ,
                           decoration: BoxDecoration(
                             color: Colors.grey[100],
                             borderRadius: BorderRadius.circular(15.0),
                           ),
                         ),
                         onPressed: (){

                         },

                       ),
                     ),
                   ],
                 ),
               ],
             ),
           );
         });
   }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[50],
      body:Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60.0),
              child: ListView.builder(
                itemCount: myprod.length,
                itemBuilder: (context,index){
                  return SingleProduct(
                    pro_id: myprod[index]['pro_id'],
                    pro_name: myprod[index]['pro_name'],
                    pro_image: myprod[index]['pro_image'],
                    pro_qty: myprod[index]['pro_qty'],
                    pro_price: myprod[index]['pro_price'],

                  );
                },
          ),
            ),
            Positioned(
              top: 0.0,
              left: 0.0,
              right: 0.0,
              height: 120.0,
              child:
              headerBuild(),
            ),
          ],
        ),
      ),
      //------Start------
      bottomNavigationBar:
      Container(
        height: 210.0,
        child: Column(
          children: [
            //details
            Card(
              child: Container(
                padding: EdgeInsets.all(5.0),
                child: Column(
                children: [
                  Row(
                    children: [
                      new Text('اجمالي المبلغ'),
                      Expanded(child:Text(''),),
                      new Text('2400.0'),
                    ],
                  ),
                  Divider(color: Colors.black,),
                  Row(
                    children: [
                      new Text('دلفري'),
                      Expanded(child:Text(''),),
                      new Text('200.0'),
                    ],
                  ),
                  Divider(color: Colors.black,),
                  Row(
                    children: [
                      new Text('الاجمالي الكلي'),
                      Expanded(child:Text(''),),
                      new Text('2600.0'),
                    ],
                  ),
                ],
            ),
              ),),
            //add pro
            Container(
              margin: EdgeInsets.only(bottom: 5.0),
              alignment: Alignment.center,
              child: GestureDetector(
                    onTap: (){},
                    child:
                        Text('اضافة الى سلة ', style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0
                          ),),
              ),
              height: 41.0,
              decoration: BoxDecoration(
                 color: Colors.red,
                  borderRadius:
                  BorderRadius.circular(40.0)
              ),
            ),
            //sure pro
            Container(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: (){
                  _showSheetMessage(context);
                },
                child:
                Text('تأكيد الطلبية ', style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0
                ),),
              ),
              height: 41.0,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius:
                  BorderRadius.circular(40.0)
              ),
            ),
          ],
        ),
      ) ,
      //------End--------
    );
  }
}
class SingleProduct extends StatelessWidget {

  final String pro_id;
  final String pro_name;
  final String pro_price;
  final String pro_qty;
  final String pro_image;
  SingleProduct({
    this.pro_id,this.pro_name,this.pro_qty,this.pro_price, this.pro_image,
});

  @override
  Widget build(BuildContext context) {

    return
      Card(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topRight,
              child: Icon(Icons.cancel,
              color: Colors.red,
              ),
              ),
            Container(
            child: ListTile(
              title:
              new Text( pro_name != null ? pro_name.toString() : 'مشاوي',style: TextStyle(
                  fontWeight: FontWeight.bold,
              fontSize: 18
              ),),
            subtitle: Text( pro_price != null ? pro_price.toString() : '',),
             leading: Container(
               width: 50.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                 image: AssetImage(pro_image != null ? pro_image.toString() : 'assets/category/cat1.png',),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
              ),
            ),
              trailing: Container(
                width: 70.0,
                child: Row(
                  children: [
                    //---plus---
                    GestureDetector(
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        child: FaIcon(
                          FontAwesomeIcons.plus,
                          color:Colors.white,
                        size: 16,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5.0)
                        ),
                      ),
                    ),
                    Expanded(
                      child: new Text(

                          pro_qty != null ? pro_qty.toString (): '',
                        style: TextStyle(
                            fontSize: 16.0),
                        textAlign:TextAlign.center,
                      ),
                    ),
                    //---Minus---
                    GestureDetector(
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        child: FaIcon(
                          FontAwesomeIcons.minus,
                          color:Colors.white,
                          size: 16,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5.0)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
    ),
          ],
        ),
      );

  }
}

