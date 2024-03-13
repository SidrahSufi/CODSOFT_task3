// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:try_alarm/clock.dart';
import 'package:try_alarm/constants/colors.dart';

import 'alarm.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var now= DateTime.now();
    var fomattedtime= DateFormat('HH:mm').format(now);
    return Scaffold(
   backgroundColor : Colors.black ,
      appBar: AppBar(

          backgroundColor: lightpink,
          elevation: 10,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: () {},
              icon: Icon (Icons.access_time,
                  color: Colors.white,
                size: 40,
                 )
                     ),

              IconButton(onPressed: () {
                final route = MaterialPageRoute(
                    builder: (context)=>set_alarm());
                Navigator.push(context, route);

              },
                  icon: Icon (Icons.alarm,
                    color: Colors.white,
                    size: 40,
                  )
              ),
              IconButton(onPressed: () {},
                  icon: Icon (Icons.timer,
                    color: Colors.white,
                    size: 40,
                  )
              ),
            ],
          )
      ),

 body:
        Container(
            padding: const EdgeInsets.all(35),
           child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children : <Widget>[


         SizedBox(height: 5),
         Text(
         fomattedtime,
             style: TextStyle(color:Colors.white, fontSize:64),
         ),
         Text(
           'Clock',
           style: TextStyle(color:Colors.white, fontSize:20),
         ),
         Clock_design(),


           ]



         ),
         ),

    );




  }
}
