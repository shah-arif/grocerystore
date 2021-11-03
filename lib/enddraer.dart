import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class enddrawer extends StatefulWidget {
  const enddrawer({Key? key}) : super(key: key);

  @override
  State<enddrawer> createState() => _enddrawerState();
}

class _enddrawerState extends State<enddrawer> {
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



    const TextStyle style1 = TextStyle(
        color: Colors.white
    );
    return SafeArea(
      child: Drawer(
        child: Material(
          // color: Colors.black.withOpacity(0.36),
          child: ListView(
            children: [
              Ink(
                color: Color(0xA9656464),
                child: Center(child: Text("Cart",style: TextStyle(fontSize: 40,color: Colors.white),)),
              ),
              Divider(
                height: 1,
                color: Colors.white,
              ),
              // UserAccountsDrawerHeader(accountName: Text("SHAH ARIF"), accountEmail: Text("shaharifabdullah@gmail.com")),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Container(child: IconButton(onPressed: discreamentNumber, icon: Icon(Icons.remove)),height: 40,color: Colors.blue,)),
                  Expanded(child: Container(child: Center(child: Text(_number.toString(),style: TextStyle(fontSize: 25),)),height: 40,color: Colors.white,)),
                  Expanded(child: Container(child: IconButton(onPressed: increamentNumber, icon: Icon(Icons.add)),height: 40,color: Colors.blue,)),
                ],
              ),
              Divider(height: 1,color: Colors.white,),
              // Row(
              //   // mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Icon(Icons.call,color: Color(0xfff16c00),size: 20,),
              //     SizedBox(width: 10,),
              //     Text("01837471759",style: TextStyle(fontSize: 15,color: Colors.white),),
              //     VerticalDivider(width: 2,color: Colors.red,),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
