import 'package:flutter/material.dart';
import 'package:resturant/product/product_detail.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var myarr_product = [
    {
      'pro_id':'1',
      'pro_name':'product1',
      'pro_desc':' desc product1 desc product1 desc product1 ',
      'pro_image':'assets/product/pro1.jpg',
      'pro_offer':'1',

    },
    {
      'pro_id':'2',
      'pro_name':'product2',
      'pro_desc':' desc product1 desc product1 desc product1 ',
      'pro_image':'assets/product/pro2.jpg',
      'pro_offer':'0',

    },
    {
      'pro_id':'3',
      'pro_name':'product3',
      'pro_desc':' desc product1 desc product1 desc product1 ',
      'pro_image':'assets/product/pro3.jpg',
      'pro_offer':'0',

    },
    {
      'pro_id':'3',
      'pro_name':'product3',
      'pro_desc':' desc product1 desc product1 desc product1 ',
      'pro_image':'assets/product/pro3.jpg',
      'pro_offer':'0',

    },
    {
      'pro_id':'3',
      'pro_name':'product3',
      'pro_desc':' desc product1 desc product1 desc product1 ',
      'pro_image':'assets/product/pro3.jpg',
      'pro_offer':'0',

    },
    {
      'pro_id':'3',
      'pro_name':'product3',
      'pro_desc':' desc product1 desc product1 desc product1 ',
      'pro_image':'assets/product/pro3.jpg',
      'pro_offer':'0',

    },
    {
      'pro_id':'3',
      'pro_name':'product3',
      'pro_desc':' desc product1 desc product1 desc product1 ',
      'pro_image':'assets/product/pro3.jpg',
      'pro_offer':'0',

    },
    {
      'pro_id':'3',
      'pro_name':'product3',
      'pro_desc':' desc product1 desc product1 desc product1 ',
      'pro_image':'assets/product/pro3.jpg',
      'pro_offer':'0',

    },
    {
      'pro_id':'3',
      'pro_name':'product3',
      'pro_desc':' desc product1 desc product1 desc product1 ',
      'pro_image':'assets/product/pro3.jpg',
      'pro_offer':'0',

    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(' سمك مشوي'
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
          child: ListView.builder(
            itemCount: myarr_product.length,
              itemBuilder: (BuildContext context,int index){
              return SingleProduct(
                pro_desc:   myarr_product[index]['pro_desc'],
                pro_name:   myarr_product[index]['pro_name'],
                pro_image:  myarr_product[index]['pro_image'],
                pro_id:     myarr_product[index]['pro_id'],
                pro_offer:  myarr_product[index]['pro_offer'],
              );
              },

          ),
        ),
      )
    );
  }
}


class SingleProduct extends StatelessWidget {
  final String pro_id;
  final String pro_name;
  final String pro_desc;
  final String pro_image;
  final String pro_offer;

  SingleProduct({this.pro_id,this.pro_name,this.pro_desc,this.pro_image,this.pro_offer});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (context)=>ProductDetail()));
      },
      //---Start---------------
      child: Container(
        margin: EdgeInsets.all(5.0),
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: Colors.grey[110],
          borderRadius: BorderRadius.circular(5.0)
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 5.0),
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage(pro_image),
                  fit: BoxFit.cover,
                )
              ),
            ),
            Expanded(
              child: Container(
                height: 100.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    new Text(pro_name,
                    style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                    ),
                    new RichText(
                      overflow:
                      TextOverflow.clip,
                      text: TextSpan(
                        children: [
                            TextSpan(
                              text: pro_desc,
                              style: TextStyle(fontSize: 16.0,
                                color: Colors.grey,
                              ),
                            )
                        ]
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //------ Start Favorite----
            Container(
              height: 100.0,
              width: 50.0,
              child: new Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  new Icon(Icons.favorite_border),
                  checkOffer(pro_offer),
                ],
              ),
            )
            // ------ End Favorite----
          ],
        ),
      ),
      //---End------------
    );
  }
   Widget checkOffer( String pro_offer){
     return pro_offer == '1' ?
    Container(
      padding: EdgeInsets.only(left: 10.0,right: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.red,

        ),
        child: new Text(
          'عرض',
          style: TextStyle(
              color: Colors.white),
        )) : Text('');
   }
}
