import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturant/account/changepassword.dart';
import 'package:resturant/account/myprofile.dart';
import 'package:resturant/favorite/favoirte.dart';
import 'package:resturant/order/tracking.dart';
import 'package:resturant/product/category.dart';
import 'package:resturant/shopping/shopping.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {

  @override
  Widget build(BuildContext context) {
    final theme =Theme.of(context).copyWith(
        dividerColor: Colors.transparent);
    return Container(
      child: Drawer(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                  accountName: Text('Mohammed Gamal',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black
                  ),),
                  accountEmail: Text('yamni.zero@gmail.com',
                  style: TextStyle(
                    color: Colors.grey,
                  ),),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Icon(Icons.person,color: Colors.white,),
                ),
              ),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 10.0,left: 10.0),
                child:  Column(
                    children: [
                    InkWell(
                    onTap: (){},
                child:
                      ListTile(
                        title: Text('الصفحة الرئيسية',
                        style: TextStyle(
                          color: Colors.black,
                            fontSize: 20.0
                        ),),
                        leading: Icon(Icons.home,
                          color: Colors.red,),
                        trailing: Icon(Icons.arrow_forward_ios,
                          color: Colors.black,
                        size: 18.0,),
                      ),
                    ),
                      Divider(color: Colors.grey[500]),
                    ],
                  ),
                ),
              Container(
                padding: EdgeInsets.only(right: 10.0,left: 10.0),
                child:  Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context)=> new Category())
                        );
                      },
                      child:
                      ListTile(
                        title: Text('قائمة المأكولات',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0
                          ),),
                        leading: Icon(Icons.restaurant,
                          color: Colors.red,),
                        trailing: Icon(Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 18.0,),
                      ),
                    ),
                    Divider(color: Colors.grey[500]),
                  ],
                ),
              ),
              Theme(
                data: theme,
                child: ExpansionTile(
                  title: Text('حسابي ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0
                    ),),
                  leading: Icon(Icons.account_circle,
                    color: Colors.red,),
                  children: [
                    //-----child account--
                    Container(
                      padding: EdgeInsets.only(right: 10.0,left: 10.0),
                      child:  Column(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context)=> new MyProfile(),
                                  ));
                            },
                            child:
                            ListTile(
                              title: Text('تغير الاعدادات الشخصية',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0
                                ),),
                              leading: Icon(Icons.person,
                                color: Colors.red,),
                              trailing: Icon(Icons.arrow_forward_ios,
                                color: Colors.black,
                                size: 18.0,),
                            ),
                          ),
                          Divider(color: Colors.grey[500]),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10.0,left: 10.0),
                      child:  Column(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(
                                    builder: (context)=> new ChangePassword(),
                                  ));
                            },
                            child:
                            ListTile(
                              title: Text('تغير كلمة المرور',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0
                                ),),
                              leading: Icon(Icons.lock_open,
                                color: Colors.red,),
                              trailing: Icon(Icons.arrow_forward_ios,
                                color: Colors.black,
                                size: 18.0,),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //-----End child account--
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.only(right: 10.0,left: 10.0),
                  child: Divider(color: Colors.grey[500])
              ),
              Container(
                padding: EdgeInsets.only(right: 10.0,left: 10.0),
                child:  Column(
                    children: [
                    InkWell(
                    onTap: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Favorite()));
                    },
                child:
                      ListTile(
                        title: Text('مفضلاتي',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0
                          ),),
                        leading: Icon(Icons.favorite,
                          color: Colors.red,),
                        trailing: Icon(Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 18.0,),
                      ),
                    ),
                      Divider(color: Colors.grey[500]),
                    ],
                  ),
              ),
              Container(
                padding: EdgeInsets.only(right: 10.0,left: 10.0),
                child:  Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(
                              builder: (context)=>Shopping()
                            ));
                      },
                      child:
                      ListTile(
                        title: Text('طلباتي',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0
                          ),),
                        leading: Icon(Icons.history,
                          color: Colors.red,),
                        trailing: Icon(Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 18.0,),
                      ),
                    ),
                    Divider(color: Colors.grey[500]),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 10.0,left: 10.0),
                child:  Column(
                  children: [
                    InkWell(
                      onTap: (){},
                      child:
                      ListTile(
                        title: Text('من نحن',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0
                          ),),
                        leading: Icon(Icons.message,
                          color: Colors.red,),
                        trailing: Icon(Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 18.0,),
                      ),
                    ),
                    Divider(color: Colors.grey[500]),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 10.0,left: 10.0),
                child:  Column(
                  children: [
                    InkWell(
                      onTap: (){},
                      child:
                      ListTile(
                        title: Text('مركز الدعم',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0
                          ),),
                        leading: Icon(Icons.phone,
                          color: Colors.red,),
                        trailing: Icon(Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 18.0,),
                      ),
                    ),
                    Divider(color: Colors.grey[500]),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 10.0,left: 10.0),
                child:  Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context)=>Tracking()));
                      },
                      child:
                      ListTile(
                        title: Text('تتبع الطلبية',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0
                          ),),
                        leading: Icon(Icons.drive_eta,
                          color: Colors.red,),
                        trailing: Icon(Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 18.0,),
                      ),
                    ),
                    Divider(color: Colors.grey[500]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




