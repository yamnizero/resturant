import 'package:flutter/material.dart';
import 'package:resturant/account/forgetPassword.dart';
import 'package:resturant/account/register.dart';
import 'package:resturant/home/home.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
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
                              margin: EdgeInsets.only(bottom:30.0 ),
                              child: Text('تغير كلمة المرور',
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
                              child:  TextFormField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          hintText: 'كلمه المرور الحالية',
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
                              child:  TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: 'كلمه المرور الجديدة',
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
                              child:  TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: 'تأكيد كلمة المرور',
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
                            MaterialButton(
                              onPressed: (){
                                Navigator.push(context,MaterialPageRoute(builder: (context)=>Home()));
                              },
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
