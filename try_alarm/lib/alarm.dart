import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:try_alarm/data.dart';

import 'constants/colors.dart';

class set_alarm extends StatefulWidget {
  const set_alarm({super.key});

  @override
  State<set_alarm> createState() => _set_alarmState();
}

class _set_alarmState extends State<set_alarm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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

                IconButton(onPressed: () {},
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
          // Text(
          //  'alarm',
          //   style: TextStyle(color:Colors.white, fontSize:64),
          // ),
                Expanded(
                    child: ListView(

                  children : alarms.map((alarm) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 30),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                      color: lightpink,
                      borderRadius: BorderRadius.all(Radius.circular(25))
                      ),
                    child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.label,
                                  color: Colors.white,
                                  size: 35,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'uni',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25

                                  ),
                                ),
                              ],
                            ),

                              Switch(
                                onChanged: (bool value){},
                                value: true,
                                activeColor: Colors.white,
                              )
                          ],
                        ),
                        Text(
                          'Mon-Fri',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15
                          ),
                        ),
                        Text(
                          '7:00 AM',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                      ],
                    ),
                    );
                  }).followedBy([
                    Container(

                      decoration: BoxDecoration(
                        color: lightpink,
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                     child: FloatingActionButton(
                       backgroundColor: lightpink,
                       elevation: 0,
                       onPressed: (){},
                       child: Column(
                         children: [
                           Icon (
                             Icons.add,
                             color: Colors.white,
                             size: 20,
                           ),
                          SizedBox(height: 8,),
                       Text(
                         'Add Alarm',
                         style: TextStyle(color:Colors.white ),
                       ),


                         ],
                       ),
                     ),
                    )



                  ]).toList()

                )
                )
]
          )
       ),
    );
  }
}
