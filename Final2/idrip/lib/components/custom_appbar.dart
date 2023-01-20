import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:idrip/constant/constant.dart';
import 'package:grock/grock.dart';
import 'package:idrip/assets.dart';


class CustomAppbar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  String appbarTitle;

  CustomAppbar({Key? key, this.appbarTitle = "Fluttii"})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        appbarTitle,
        style:
            const TextStyle(color: Constant.black, fontWeight: FontWeight.bold),
            
      ),
      
      leading: IconButton(icon: const Icon(Icons.menu),
       color: Constant.orange,
      onPressed: () {},
      
      
      ),
         actions: [IconButton( icon: const Icon(Icons.search),
          color: Constant.orange,
         onPressed: () {
  {
 
    const ListTile(
   leading: Icon(
    Icons.search,
    color: Colors.white,
    size: 28,
   ),
   title: TextField(
    decoration: InputDecoration(
      contentPadding: const EdgeInsets.symmetric(vertical: 10.0,horizontal:15),
    hintText: 'Search',
    suffixIcon: const Icon(Icons.search),
    hintStyle: TextStyle(
     color: Constant.orange,
     fontSize: 18,
     fontStyle: FontStyle.italic,
    ),
    border: InputBorder.none,
    ),
    style: TextStyle(
    color: Constant.orange,
    ),
   ),
   );
  } 
           
         },
         ),
         IconButton( icon: const Icon(Icons.notifications_active),
         color: Constant.orange,
         onPressed: (() {
           
         }),
         )
         ],
         backgroundColor: Constant.white,
    
        );
  }
}