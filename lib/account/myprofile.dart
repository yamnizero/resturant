import 'package:flutter/material.dart';
import 'package:resturant/account/login.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
              onPressed:()=> Navigator.of(context).pop()
          ),
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
              margin: EdgeInsets.all(10.0),
              child:Column(
                children: [
                  Expanded(
                      child:Form(
                        child: ListView(
                          children: [
                            Container(

                              child: Text('تغير الأعدادات الشخصية',
                                style: TextStyle(
                                    fontSize: 25.0,color: Colors.red
                                ),),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                color: Colors.white,

                              ),
                              padding: EdgeInsets.only(left: 20.0,right: 20.0),
                              margin: EdgeInsets.only(bottom:10.0 ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: 'الاسم الكامل',
                                    border: InputBorder.none
                                ),
                                validator: (String value){
                                  if(value.isEmpty || value.length < 1){
                                    return "الرجاء ادخال الاسم الكامل";
                                  }
                                } ,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                color: Colors.white,

                              ),
                              padding: EdgeInsets.only(left: 20.0,right: 20.0),
                              margin: EdgeInsets.only(bottom:10.0 ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: 'البريد الالكتروني',
                                    border: InputBorder.none
                                ),
                                validator: (String value){
                                  if(
                                  value.isEmpty || value.indexOf(".") == -1 ||
                                      value.isEmpty || value.indexOf("@") == -1
                                  )
                                  {
                                    return "الرجاء ادخال البريد الالكتروني";
                                  }
                                } ,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                color: Colors.white,

                              ),
                              padding: EdgeInsets.only(left: 20.0,right: 20.0),
                              margin: EdgeInsets.only(bottom:10.0 ),
                              child: TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: 'كلمه المرور',
                                    border: InputBorder.none
                                ),
                                validator: (String value){
                                  if(
                                  value.isEmpty || value.length < 6){
                                    return "الرجاء ادخال كلمه المرور";
                                  }

                                } ,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                color: Colors.white,

                              ),
                              padding: EdgeInsets.only(left: 20.0,right: 20.0),
                              margin: EdgeInsets.only(bottom:10.0 ),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    hintText: 'رقم الهاتف',
                                    border: InputBorder.none
                                ),
                                validator: (String value){
                                  if(value.isEmpty || value.length < 5){
                                    return "الرجاء ادخال رقم الهاتف";
                                  }

                                } ,
                              ),
                            ),

                            MaterialButton(
                              onPressed: (){},
                              child: Container(

                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(bottom:10.0,top: 20.0 ),
                                padding: EdgeInsets.all( 2.0),
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(25.0)
                                ),
                                child: Text('حفظ',
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      color: Colors.white
                                  ),),
                              ),
                            ),
                          ],
                        ),
                      )
                  ),

                ],
              )
          ),
        )
    );
  }
}

