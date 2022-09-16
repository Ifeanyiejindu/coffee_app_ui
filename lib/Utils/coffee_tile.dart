import 'package:flutter/material.dart';

class CoffeeTiles extends StatelessWidget {
  final String imagePath;
  final String accompanyingTopings;
  final String amount;

  CoffeeTiles({required this.imagePath,
  required this.accompanyingTopings,
  required this.amount});

  @override
  Widget build(BuildContext context) {
    return Padding(

      //container of the scrolling button
      padding: const EdgeInsets.only(left: 25.0, top: 40),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
            color: Color(0xFF141921),
          borderRadius: BorderRadius.circular(25)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //image of the coffee
              Container(
                height: 180,
                width: 180,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                    child: Image.asset(imagePath, fit: BoxFit.cover,),),
              ),
              SizedBox(height: 10,),

              //title of the scrolling coffee
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                child: Text('Cappiccino', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),),
              ),

              //with oat milk or chocolate
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(accompanyingTopings),
              ),

              SizedBox(height: 20,),

              //price or amount

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          '\$ ', style: TextStyle(
                          color: Color(0xFFD17742),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        ),
                        Text(
                          amount, style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        ),
                      ],
                    ),

                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Color(0xFFD17742),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      
                      child: Icon(
                        Icons.add, size: 20,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
