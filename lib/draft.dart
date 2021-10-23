// import 'package:flutter/material.dart';
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0.1,
//         backgroundColor: Colors.deepOrange,
//         title: Text("Sihan's E-Commerce App"),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(
//               Icons.search,
//               color: Colors.white,
//             ),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: Icon(
//               Icons.shopping_cart,
//               color: Colors.white,
//             ),
//             onPressed: () {},
//           )
//         ],
//       ),
//       drawer: Drawer(
//         child: ListView(
//           children: <Widget>[
//             //         header
//             UserAccountsDrawerHeader(
//               accountName: Text('Kamrul Islam SIhan'),
//               accountEmail: Text('sihanchy@gmail.com'),
//               currentAccountPicture: GestureDetector(
//                 child: CircleAvatar(
//                   backgroundColor: Colors.white,
//                   child: Icon(Icons.person),
//                 ),
//               ),
//               decoration: BoxDecoration(
//                   color: Colors.deepOrangeAccent
//               ),
//             ),
//             InkWell(
//               onTap: (){},
//               child: ListTile(
//                 title: Text('Home Page'),
//                 leading: Icon(Icons.home),
//               ),
//             ),
//             InkWell(
//               onTap: (){},
//               child: ListTile(
//                 title: Text('My Account'),
//                 leading: Icon(Icons.person),
//               ),
//             ),
//             InkWell(
//               onTap: (){},
//               child: ListTile(
//                 title: Text('My Orders'),
//                 leading: Icon(Icons.shopping_basket),
//               ),
//             ),
//             InkWell(
//               onTap: (){},
//               child: ListTile(
//                 title: Text('Categories'),
//                 leading: Icon(Icons.dashboard),
//               ),
//             ),
//             InkWell(
//               onTap: (){},
//               child: ListTile(
//                 title: Text('Favorites'),
//                 leading: Icon(Icons.favorite),
//               ),
//             ),
//             InkWell(
//               onTap: (){},
//               child: ListTile(
//                 title: Text('Settings'),
//                 leading: Icon(Icons.settings, color: Colors.blue),
//               ),
//             ),
//             InkWell(
//               onTap: (){},
//               child: ListTile(
//                 title: Text('About'),
//                 leading: Icon(Icons.help, color: Colors.green),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }