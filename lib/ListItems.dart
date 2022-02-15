import 'package:appdev/StoredData/Storeddata.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottomsheet.dart';

class Medicines extends StatelessWidget {
  const Medicines({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
    shrinkWrap: true,
            itemCount: itemlist.length,
            itemBuilder: (context, int i) {
              return GestureDetector(
          onTap: () => showModalBottomSheet(
              backgroundColor: Colors.transparent,
              isScrollControlled: true,
              context: context,
              builder: (context) => BuildSheet()),
              
              child: Slidable(
                actionPane: SlidableScrollActionPane(),
                secondaryActions: <Widget>[

                  IconSlideAction(
                    color: Colors.red.shade300,
                   
                    iconWidget: Icon(Icons.check,
                    size: 40,
                    ),
                    onTap: (){},
                  )

                ],
                
                child: Container(
                  height: 150,
                  // width: 10,
                  decoration: BoxDecoration(
                  color: Colors.white,
                    border:Border.all(),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Image.asset(itemlist[i].myicon),
              
                      Container(
                        margin: EdgeInsets.only(top: 25,),
                        // color: Colors.black38,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width/1.65,
                                  // color: Colors.amber,
                                  child: Text(itemlist[i].mylist,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.indigo.shade900,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 16
                                  ),),
                                ),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width/1.65,
                                  // color: Colors.teal,
                                  // margin: EdgeInsets.only(right: ),
                                  alignment: AlignmentDirectional.topStart,
                                  child: Text(itemlist[i].dose,
                                  style: TextStyle(
                                    color: Colors.indigo.shade800,
                                    fontWeight: FontWeight.w500,
                                    // fontSize: 16
                                  ),),
                                ),
                              ],
                            ),
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width/1.65,
                                  // color: Colors.brown,
                                  // margin: EdgeInsets.only(right: 55),
                                  child: Row(
                                    children: [
                                      Text(itemlist[i].time,
                                      style: TextStyle(
                                        color: Colors.indigo.shade800,
                                        fontWeight: FontWeight.bold,
                                        // fontSize: 16
                                      ),),
                                      SizedBox(width: MediaQuery.of(context).size.width/3,),
                                      Icon(Icons.notifications_active,
                                      color: Colors.indigo.shade800,)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
              
                      
                    ],
                  ),
                  // width: 50,
              
              
                ),
              )
            );
            });
            }
      
}

