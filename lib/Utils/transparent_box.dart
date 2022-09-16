import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';

class TransparentBox extends StatelessWidget {
  const TransparentBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlurryContainer(
      color: Colors.black.withOpacity(0.5),
      blur: 10,
      width: 400,
      height: 160,
      elevation: 0,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30)
        ),

        //the content of the box
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 22.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //product title here
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Cappuccino', style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),),
                  SizedBox(height: 5,),
                  Text('With Oat Milk', style: TextStyle(
                    fontSize: 15, color: Colors.white60
                  ),),

                  SizedBox(height:17),

                  //rating texts
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(Icons.star_rate, color: Color(0xFFD17742),),
                      SizedBox(width: 7,),

                      Text('4.5', style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),),
                      SizedBox(width: 2,),
                      Text('(6.986)', style: TextStyle(
                        fontSize: 13
                      ),)
                    ],
                  )
                ],
              ),

              //for the icons beside the Title
              Column(
                children: [
                  Row(
                    children: [
                      //first icon for coffee
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFF11141A),
                          borderRadius: BorderRadius.circular(15),),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Icon(Icons.coffee_rounded,color: Color(0xFFD17742),size: 20,),
                              SizedBox(height: 2,),
                              Text('Coffee', style: TextStyle(
                                  fontSize: 10
                              ),),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      //second icon for milk
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFF11141A),
                          borderRadius: BorderRadius.circular(15),),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Icon(Icons.favorite_rounded,color: Color(0xFFD17742),size: 20,),
                              SizedBox(height: 2,),
                              Text('Milk', style: TextStyle(
                                  fontSize: 10
                              ),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 35,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Color(0xFF11141A),
                      borderRadius: BorderRadius.circular(15),),
                    child: Center(child: Text('Medium Roasted', style: TextStyle(
                        fontSize: 12
                    ),),),
                  ),
                ],
              ),
            ],
          ),
        ),

      ),
    );
  }
}