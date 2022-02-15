import 'package:flutter/material.dart';

class BuildSheet extends StatelessWidget {
  const BuildSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: DraggableScrollableSheet(
          initialChildSize: 1,
          maxChildSize: 1.0,
          // minChildSize: 0.67,
          builder: (_, controller) => Container(
                decoration: BoxDecoration(
                    color: Colors.indigo[900],
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),
                child: ListView(children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 100.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.notifications_active,
                              color: Colors.white,
                              size: 35,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 2,
                            child: Text(
                              "Loratadine, 10mg",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Text("1pill, once per day",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 15
                            ),),
                          )
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 1,
                            child: Image.asset("assets/tablet.png",
                            height: MediaQuery.of(context).size.height/4,
                            )),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Text("08:00 AM",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w500
                            ),),)
                        ],
                      ),
                      // Fracri?SizedBox(height: MediaQuery.of(context.size?.height/3),),
                      // FractionallySizedBox(heightFactor:0.25 ,),
                      SizedBox(height: 50,),
                      Padding(
                        padding: const EdgeInsets.only(left:15.0),
                        child: Row(
                          
                          children: [
                            Expanded(child: 
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                            ),)),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(bottom:8.0),
                        child: Container(
                          width: 300,
                          height: 47,
                          
                          child: ElevatedButton(
                            onPressed: (){}, 
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                              
                              backgroundColor:MaterialStateProperty.all<Color>(Colors.pink.shade200)
                            ),
                          
                          child: Text("Where to buy",
                          style: TextStyle(
                            color: Colors.indigo.shade900,
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                          ),)),
                        ),
                      )
                      
                    ],
                  ),
                ]),
              )),
    );
  }
}
