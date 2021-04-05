import 'package:flutter/material.dart';
import 'package:resturant/product/product_detail.dart';

class Favorite extends StatefulWidget {
  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  var myarr_product = [
    {
      'pro_id':'1',
      'pro_name':'product1',
      'pro_desc':' desc product1 desc product1 desc product1 ',
      'pro_image':'assets/product/pro1.jpg',

    },
    {
      'pro_id':'2',
      'pro_name':'product2',
      'pro_desc':' desc product1 desc product1 desc product1 ',
      'pro_image':'assets/product/pro2.jpg',

    },
    {
      'pro_id':'3',
      'pro_name':'product3',
      'pro_desc':' desc product1 desc product1 desc product1 ',
      'pro_image':'assets/product/pro3.jpg',

    },
    {
      'pro_id':'3',
      'pro_name':'product3',
      'pro_desc':' desc product1 desc product1 desc product1 ',
      'pro_image':'assets/product/pro3.jpg',

    },
    {
      'pro_id':'3',
      'pro_name':'product3',
      'pro_desc':' desc product1 desc product1 desc product1 ',
      'pro_image':'assets/product/pro3.jpg',

    },
    {
      'pro_id':'3',
      'pro_name':'product3',
      'pro_desc':' desc product1 desc product1 desc product1 ',
      'pro_image':'assets/product/pro3.jpg',

    },
    {
      'pro_id':'3',
      'pro_name':'product3',
      'pro_desc':' desc product1 desc product1 desc product1 ',
      'pro_image':'assets/product/pro3.jpg',

    },
    {
      'pro_id':'3',
      'pro_name':'product3',
      'pro_desc':' desc product1 desc product1 desc product1 ',
      'pro_image':'assets/product/pro3.jpg',

    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text('مفضلاتي'
          ,style: TextStyle(
              color: Colors.black
          ),),
        leading: InkWell(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back_ios,color: Colors.black,),
        ),
      ),
      body: Container(
        child: GridView.builder(
          itemCount: myarr_product.length,
            gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.8
            ) ,
            itemBuilder: (BuildContext context,int index){
              return   SingleProduct(
                pro_id:myarr_product[index]['pro_id'],
                pro_name: myarr_product[index]['pro_name'],
                pro_desc: myarr_product[index]['pro_desc'],
                pro_image: myarr_product[index]['pro_image'],
              );
            }
        ),
      ),
    );
  }
}


class SingleProduct extends StatelessWidget {
  final String pro_id;
  final String pro_name;
  final String pro_desc;
  final String pro_image;

  SingleProduct({this.pro_id,this.pro_name,this.pro_desc,this.pro_image});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (context)=>ProductDetail()));
      },
      child: Container(
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.0),
        ),
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topRight,
                child: Icon(Icons.favorite_border,color: Colors.red,)),
            Container(
              height: MediaQuery.of(context).size.width/2-70,
              width: MediaQuery.of(context).size.width/2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: AssetImage(pro_image),
                    fit: BoxFit.cover,
                  )
              ),
            ),
            Expanded(
              child: Text(
                pro_name,style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
              ),
            ),
            Row(
              children: [
                Text(pro_id),
                Expanded(child: Text('')),
                Text(pro_id),
                Icon(Icons.star_border,color: Colors.yellow,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
