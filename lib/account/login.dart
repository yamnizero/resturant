import 'package:flutter/material.dart';
import 'package:resturant/account/forgetPassword.dart';
import 'package:resturant/account/register.dart';
import 'package:resturant/home/home.dart';

 class Login extends StatefulWidget {
   @override
   _LoginState createState() => _LoginState();
 }

 class _LoginState extends State<Login> {
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
                           child: Text('سجل الدخول الى حسابك من هنا ',
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
                           child: Row(
                             children: [
                               Expanded(
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
                               GestureDetector(
                                 onTap: (){
                                   Navigator.push(context,
                                       MaterialPageRoute(
                                           builder: (context)=>ForgetPassword()));
                                 },
                                 child: Text('نسيت؟',style: TextStyle(
                                   color: Colors.red
                                 ),),
                               )
                             ],
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
                         child: Text('دخول',
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
               Container(
                 alignment: Alignment.center,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text('اذا ليس لديك حساب سجل من هنا ',
                       style: TextStyle(
                         color: Colors.black,fontSize: 16.0,
                       ),),
                     Padding(padding: EdgeInsets.all(10.0)),
                     GestureDetector(
                       onTap: (){
                         Navigator.push(context,MaterialPageRoute(
                             builder: (context)=> Register()));
                       },
                       child: Text('تسجيل جديد',
                       style: TextStyle(
                         color: Colors.red,fontSize: 16.0,
                       ),),)
                   ],
                 ),

               )
             ],
           )
         ),
       )
     );
   }
 }
