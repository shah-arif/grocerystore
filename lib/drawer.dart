import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class drawer extends StatelessWidget {
  const drawer({Key? key}) : super(key: key);

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
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('images/pp.jpg'),
                  ),
                  title: Text("Shah Arif Abdullah",style: style1,),
                  subtitle: Text("#shaharif59",style: style1,),
                  trailing: IconButton(onPressed: (){}, icon: Icon(Icons.qr_code_scanner),color: Colors.white,),
                  onTap: () {},
                ),
              ),
              Divider(
                height: 1,
                color: Colors.white,
              ),
              // UserAccountsDrawerHeader(accountName: Text("SHAH ARIF"), accountEmail: Text("shaharifabdullah@gmail.com")),
              ListTile(
                leading: Icon(Icons.apps,color: Colors.white,),
                title: Text("All Catagories",style: style1,),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(FontAwesomeIcons.bolt,color: Colors.yellow,),
                title: Text("Flash Sale",style: style1,),
                onTap: () {},
              ),
              // ListTile(
              //   leading: Icon(FontAwesomeIcons.heart,color: Colors.yellow,),
              //   title: Text("Popular",style: style1,),
              //   onTap: () {},
              // ),
              ListTile(
                leading: Icon(FontAwesomeIcons.appleAlt,color: Colors.red,),
                title: Text("Fruits",style: style1,),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(FontAwesomeIcons.utensils,color: Colors.yellow,),
                title: Text("Food",style: style1,),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(FontAwesomeIcons.carrot,color: Colors.green,),
                title: Text("Vegetables",style: style1,),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(FontAwesomeIcons.egg,color: Color(0xffffd79a),),
                title: Text("Dairy & Egg",style: style1,),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(FontAwesomeIcons.child,color: Color(0xffff5e5e),),
                title: Text("Baby Care",style: style1,),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(FontAwesomeIcons.handHoldingMedical,color: Color(
                    0xffffffff),),
                title: Text("Health & Care",style: style1,),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(FontAwesomeIcons.pumpSoap,color: Color(
                    0xff00ffad),),
                title: Text("Cleaning Supplies",style: style1,),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(FontAwesomeIcons.glassCheers,color: Color(
                    0xff70f6ea),),
                title: Text("Beverages",style: style1,),
                onTap: () {},
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
