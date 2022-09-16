import 'package:coffee_app_ui/Pages/homepage.dart';
import 'package:coffee_app_ui/Utils/transparent_box.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D0F15),
      body: Stack(
        children: [
          Container(
            width: 400,
            height: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30)
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset('lib/images/2.jpg', fit: BoxFit.cover,)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 40,),

              //top icons
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    //left back arrow icon and adding ontap function to take it backt to previous page
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext){return HomePage();},),);
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color(0xFF322725)
                          ),
                          color: Color(0xFF161920),
                          borderRadius: BorderRadius.circular(15),),
                        child: Icon(Icons.arrow_back_ios_rounded,color: Colors.grey[700],),
                      ),
                    ),

                    //right favourite
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color(0xFF322725)
                        ),
                        color: Color(0xFF161920),
                        borderRadius: BorderRadius.circular(15),),
                      child: Icon(Icons.favorite_rounded,color: Colors.grey[700],),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 200,),

              //transparent box on top of image
              TransparentBox(),

              //description heading
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                child: Text('Description'),
              ),

              //description body
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0, right: 23.0),
                child: RichText(text: TextSpan(
                    style: TextStyle(
                        fontSize: 14
                    ),
                    children: [
                      TextSpan(text: 'A cappuccino is a coffee-based drink made primarily from espresso and milk...'),
                      TextSpan(text: 'Read More', style: TextStyle(
                          color: Color(0xFFCB7440)
                      ))
                    ]
                )),
              ),

              //sizes
              Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 22.0, bottom: 15),
                child: Text('Size'
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFD17742),
                          ),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Text('S', style: TextStyle(
                          fontSize: 18, color: Color(0xFFD17742)
                      ),)),
                    ),
                    Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Color(0xFF141921),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Text('M', style: TextStyle(
                          fontSize: 18
                      ),)),
                    ),
                    Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Color(0xFF141921),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Text('L', style: TextStyle(
                          fontSize: 18
                      ),)),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30,),

              //pricing and buynow button
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text('Price', style: TextStyle(
                            fontSize: 15
                        ),),
                        SizedBox(height: 3,),
                        Row(
                          children: [
                            Text('\$ ',
                              style: TextStyle(
                                  color: Color(0xFFD17742),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25
                              ),),
                            Text('4.20',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25
                              ),),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 10,),
                    //buynow button
                    Container(
                      height: 55,
                      width: 230,
                      decoration: BoxDecoration(
                          color: Color(0xFFD17742),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(
                        child: Text(
                          'Buy Now', style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      ),
                    ),
                  ],
                ),
              )







            ],
          ),
        ],
      )
    );
  }
}
