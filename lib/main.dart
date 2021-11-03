import 'package:ecom/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'enddraer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  var _currentIndex = 0;







  int _number = 1;

  increamentNumber(){
    setState(() {
      _number++;
    });
  }

  discreamentNumber(){
    setState(() {
      _number--;
    });
  }

















  @override
  Widget build(BuildContext context) {
    const TextStyle styleCard = TextStyle(
        fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xff426367));
    return Scaffold(

      drawer: Theme(
          data: Theme.of(context).copyWith(canvasColor: Color(0x74505050)),
          child: drawer()),
      endDrawer: Theme(
          data: Theme.of(context).copyWith(canvasColor: Color(0x74505050)),
          child: enddrawer()),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
          onTap: (index){
          setState(() {
            _currentIndex = index;
          });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.explore),label: "Explore"),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "Account"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
          ]
      ),
      // backgroundColor: Color(0xffececec),
      body: Container(
        color: Color(0xffedf4fc),
        // decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //         begin: Alignment.topCenter,
        //         end: Alignment.bottomRight,
        //         colors: [Color(0xffee9ca7),Color(0xffffdde1)]
        //     )
        // ),
        child: Builder(
          builder: (context) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: SafeArea(
                  child: Center(
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Scaffold.of(context).openDrawer();
                              },
                              icon: Icon(
                                Icons.menu,
                              )),
                          Expanded(
                              child: Container(
                            height: 35,
                            child: TextField(
                              textAlignVertical: TextAlignVertical.bottom,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(30))),
                                  hintText: 'Search products',
                                  hintStyle: TextStyle(),
                                  suffixIcon: Icon(Icons.search),
                                  filled: true,
                                  fillColor: Colors.white,
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(30)))),
                            ),
                          )),
                          IconButton(
                              onPressed: () {
                                Scaffold.of(context).openEndDrawer();
                              },
                              icon: Icon(
                                Icons.shopping_cart,
                                color: Color(0xff0fce01),
                              ))
                        ],
                      ),
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                    ),
                    // Divider(),
                    Container(
                      height: 60,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Card(
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 2),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.delivery_dining,
                                        color: Colors.orange,
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        "Free Delivery",
                                        style: styleCard,
                                      )
                                    ],
                                  ),
                                ),
                                height: 30,
                                width: 120,
                              ),
                              color: Colors.white,
                              shadowColor: Colors.grey,
                              elevation: 8,
                            ),
                            Card(
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 2),
                                  child: Row(
                                    children: [
                                      Icon(Icons.bolt,color: Color(0xffbb571f),),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        "Flash Sale",
                                        style: styleCard,
                                      )
                                    ],
                                  ),
                                ),
                                height: 30,
                                width: 110,
                              ),
                              color: Colors.white,
                              shadowColor: Colors.grey,
                              elevation: 8,
                            ),
                            Card(
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 2),
                                  child: Row(
                                    children: [
                                      Icon(Icons.beach_access,color: Color(
                                          0xfff39500),),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        "Summer",
                                        style: styleCard,
                                      )
                                    ],
                                  ),
                                ),
                                height: 30,
                                width: 110,
                              ),
                              color: Colors.white,
                              shadowColor: Colors.grey,
                              elevation: 8,
                            ),
                            Card(
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 2),
                                  child: Row(
                                    children: [
                                      Icon(Icons.local_offer,color: Color(
                                          0xff0fce01),),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        "Discount",
                                        style: styleCard,
                                      )
                                    ],
                                  ),
                                ),
                                height: 30,
                                width: 110,
                              ),
                              color: Colors.white,
                              shadowColor: Colors.grey,
                              elevation: 8,
                            ),

                            Card(
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 2),
                                  child: Row(
                                    children: [
                                      Icon(Icons.bolt),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        "On Sale",
                                        style: styleCard,
                                      )
                                    ],
                                  ),
                                ),
                                height: 30,
                                width: 110,
                              ),
                              color: Colors.white,
                              shadowColor: Colors.grey,
                              elevation: 8,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                        child: GridView.count(
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                          crossAxisCount: 2,
                          children: [
                            InkWell(
                              onTap: (){

                                showModalBottomSheet(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
                                  backgroundColor: Color(0xffffffff),
                                  isScrollControlled: true,
                                    context: context,
                                    elevation: 6,
                                    builder: (context){
                                  return Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(child: Image.asset("images/apple.jpg")),
                                          Expanded(child: Text("Calories: 52 \nWater: 86% \nProtein: 0.3 grams \nCarbs: 13.8 grams \nSugar: 10.4 grams \nFiber: 2.4 grams \nFat: 0.2 grams",style: TextStyle(fontSize: 15),))
                                        ],
                                      ),
                                      Text("Apple (1kg)"),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Expanded(child: Container(child: IconButton(onPressed: discreamentNumber, icon: Icon(Icons.remove)),height: 40,color: Colors.blue,)),
                                          Expanded(child: Container(child: Center(child: Text(_number.toString(),style: TextStyle(fontSize: 25,color: Colors.white),)),height: 40,color: Colors.purple,)),
                                          Expanded(child: Container(child: IconButton(onPressed: increamentNumber, icon: Icon(Icons.add)),height: 40,color: Colors.blue,)),
                                        ],
                                      ),

                                    ],
                                  );
                                });
                              },
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Image.asset('images/apple.jpg'),
                                        height: 110,
                                        width: 120,
                                      ),
                                      Text("Apple (1kg)",style: styleCard,),
                                      SizedBox(height: 5,),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5,right: 5),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("৳180",style: styleCard,),
                                              Icon(Icons.shopping_cart),

                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xffffffff)),
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                showModalBottomSheet(
                                    backgroundColor: Color(0xffffffff),
                                    isScrollControlled: true,
                                    context: context,
                                    elevation: 6,
                                    builder: (context){
                                      return Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        // crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 8,right: 8,top: 8),
                                            child: Row(
                                              children: [
                                                Expanded(child: Image.asset("images/banana.jpg")),
                                                Expanded(child: Column(
                                                  children: [
                                                    Text("Nutrition facts",),
                                                    Table(

                                                      border: TableBorder.all(color: Colors.green,width: 1),
                                                      // columnWidths: const <int, TableColumnWidth>{
                                                      //   0: IntrinsicColumnWidth(),
                                                      //   1: FlexColumnWidth(),
                                                      //   2: FixedColumnWidth(64),
                                                      // },
                                                      children: [
                                                        TableRow(
                                                            children: [
                                                              TableCell(child: Text("Calories")),
                                                              TableCell(child: Text("89")),
                                                            ]
                                                        ),
                                                        TableRow(
                                                            children: [
                                                              TableCell(child: Text("Water")),
                                                              TableCell(child: Text("75%"))
                                                            ]
                                                        ),
                                                        TableRow(
                                                            children: [
                                                              TableCell(child: Text("Protein")),
                                                              TableCell(child: Text("1.1 grams"))
                                                            ]
                                                        ),
                                                        TableRow(
                                                            children: [
                                                              TableCell(child: Text("Carbs")),
                                                              TableCell(child: Text("22.8 grams"))
                                                            ]
                                                        ),
                                                        TableRow(
                                                            children: [
                                                              TableCell(child: Text("Sugar")),
                                                              TableCell(child: Text("12.2 grams"))
                                                            ]
                                                        ),
                                                        TableRow(
                                                            children: [
                                                              TableCell(child: Text("Fiber")),
                                                              TableCell(child: Text("2.6 grams"))
                                                            ]
                                                        ),
                                                        TableRow(
                                                            children: [
                                                              TableCell(child: Text("Fat")),
                                                              TableCell(child: Text("0.3 grams"))
                                                            ]
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ))
                                              ],
                                            ),
                                          ),
                                          Text("Apple (1kg)"),
                                          ElevatedButton(style: ElevatedButton.styleFrom(
                                            minimumSize: Size(double.infinity,30)
                                          ),onPressed: (){}, child: Text("Add to Cart"))

                                        ],
                                      );
                                    });
                              },
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Image.asset('images/banana.jpg'),
                                        height: 110,
                                        width: 120,
                                      ),
                                      Text("Banana (6p/12p)",style: styleCard,),
                                      SizedBox(height: 5,),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5,right: 5),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("৳30/55",style: styleCard,),
                                              Icon(Icons.shopping_cart),

                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xffffffff)),
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      child: Image.asset('images/bean.jpg'),
                                      height: 110,
                                      width: 120,
                                    ),
                                    Text("Bean (1kg)",style: styleCard,),
                                    SizedBox(height: 5,),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 5,right: 5),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("৳140",style: styleCard,),
                                            Icon(Icons.shopping_cart),

                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffffffff)),
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      child: Image.asset('images/Cabbage.jpg'),
                                      height: 110,
                                      width: 120,
                                    ),
                                    Text("Cabbage (1kg)",style: styleCard,),
                                    SizedBox(height: 5,),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 5,right: 5),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("৳100",style: styleCard,),
                                            Icon(Icons.shopping_cart),

                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffffffff)),
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      child: Image.asset('images/carrot.jpg'),
                                      height: 110,
                                      width: 120,
                                    ),
                                    Text("Carrot (1kg)",style: styleCard,),
                                    SizedBox(height: 5,),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 5,right: 5),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("৳90",style: styleCard,),
                                            Icon(Icons.shopping_cart),

                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffffffff)),
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      child: Image.asset('images/Cauliflower.jpg'),
                                      height: 110,
                                      width: 120,
                                    ),
                                    Text("Cauliflower (1kg)",style: styleCard,),
                                    SizedBox(height: 5,),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 5,right: 5),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("৳100",style: styleCard,),
                                            Icon(Icons.shopping_cart),

                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffffffff)),
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      child: Image.asset('images/chicken.jpg'),
                                      height: 110,
                                      width: 120,
                                    ),
                                    Text("Chicken (1kg)",style: styleCard,),
                                    SizedBox(height: 5,),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 5,right: 5),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("৳200",style: styleCard,),
                                            Icon(Icons.shopping_cart),

                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffffffff)),
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      child: Image.asset('images/cocacola.jpg'),
                                      height: 110,
                                      width: 120,
                                    ),
                                    Text("Coca-Cola (250ml)",style: styleCard,),
                                    SizedBox(height: 5,),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 5,right: 5),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("৳40",style: styleCard,),
                                            Icon(Icons.shopping_cart),

                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffffffff)),
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      child: Image.asset('images/garlic.jpg'),
                                      height: 110,
                                      width: 120,
                                    ),
                                    Text("Garlic (1kg)",style: styleCard,),
                                    SizedBox(height: 5,),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 5,right: 5),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("৳150",style: styleCard,),
                                            Icon(Icons.shopping_cart),

                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffffffff)),
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      child: Image.asset('images/ginger.jpg'),
                                      height: 110,
                                      width: 120,
                                    ),
                                    Text("Ginger (1kg)",style: styleCard,),
                                    SizedBox(height: 5,),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 5,right: 5),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("৳140",style: styleCard,),
                                            Icon(Icons.shopping_cart),

                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffffffff)),
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                            ),

                          ],
                        ),
                      ),
                    )
                    // Container(color: Colors.white,height: 100,),
                    // SizedBox(height: 5,),
                    // Container(color: Colors.green,height: 100,),
                    // Container(color: Colors.blue,height: 100,)
                  ],
                ),
              )),
            ),
          ),
        ),
      ),
    );
  }
}

