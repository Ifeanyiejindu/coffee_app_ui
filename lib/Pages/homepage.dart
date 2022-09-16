import 'package:coffee_app_ui/Utils/coffee_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final List _coffeeDetails = [
    ['lib/images/1.jpg', 'With Oat Milk', '4.20'],
    ['lib/images/2.jpg', 'Chocolate', '3.14'],

  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xFF0D1016),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(10)
                ),

                child: Icon(
                  Icons.apps, size: 25,
                ),),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey.shade700,
                    width: 1,
                  )
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset('lib/images/pic.jpg',
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
            ),

          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.deepOrangeAccent,),label: '',),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_rounded),label: '',),
            BottomNavigationBarItem(icon: Icon(Icons.favorite),label: '',),
            BottomNavigationBarItem(icon: Icon(Icons.notifications),label: '',),
          ],
        ),
        body: Column(
          children: [
            //find the best coffee for you caption
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Find the best coffee for you',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),),
            ),
            
            //search box
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(

                //so that we have the right background
                decoration: BoxDecoration(
                  color: Color(0xFF141921),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Color(0xFF141921),
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Find your coffee..',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Color(0xFF141921)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Color(0xFF141921)),),
                  ),
                ),
              ),
            ),

            SizedBox(height: 25,),
            TabBar(
                tabs:[
              Tab(child: Text('Cappucino')),
              Tab(child: Text('Espresso')),
              Tab(child: Text('Latte')),
              Tab(child: Text('Flat Wa')),
            ]),

            Expanded(
              child: TabBarView(children: [
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CoffeeTiles(imagePath: _coffeeDetails[0][0],
                        accompanyingTopings: _coffeeDetails[0][1],
                        amount: _coffeeDetails[0][2],),
                      CoffeeTiles(imagePath: _coffeeDetails[1][0],
                        accompanyingTopings: _coffeeDetails[1][1],
                        amount: _coffeeDetails[1][2],),

                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CoffeeTiles(imagePath: _coffeeDetails[0][0],
                        accompanyingTopings: _coffeeDetails[0][1],
                        amount: _coffeeDetails[0][2],),
                      CoffeeTiles(imagePath: _coffeeDetails[1][0],
                        accompanyingTopings: _coffeeDetails[1][1],
                        amount: _coffeeDetails[1][2],),

                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CoffeeTiles(imagePath: _coffeeDetails[0][0],
                        accompanyingTopings: _coffeeDetails[0][1],
                        amount: _coffeeDetails[0][2],),
                      CoffeeTiles(imagePath: _coffeeDetails[1][0],
                        accompanyingTopings: _coffeeDetails[1][1],
                        amount: _coffeeDetails[1][2],),

                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CoffeeTiles(imagePath: _coffeeDetails[0][0],
                        accompanyingTopings: _coffeeDetails[0][1],
                        amount: _coffeeDetails[0][2],),
                      CoffeeTiles(imagePath: _coffeeDetails[1][0],
                        accompanyingTopings: _coffeeDetails[1][1],
                        amount: _coffeeDetails[1][2],),

                    ],
                  ),
                ),
              ]),
            ),

            SizedBox(height: 25,),
          ],
        ),

      ),
    );
  }
}
