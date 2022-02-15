import 'package:appdev/ListItems.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'StoredData/Storeddata.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  double deviceHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      body: SafeArea(
        bottom: true,
        top: true,
        left: true,
        right: true,
        child: Stack(
          fit: StackFit.expand,
          children: [
            FractionallySizedBox(
              alignment: Alignment.topCenter,
              heightFactor: 0.25,
              child: Container(
                  
                  ),
            ),
            FractionallySizedBox(
              alignment: Alignment.bottomCenter,
              heightFactor: 1 - 0.25,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.indigo.shade900,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: deviceHeight(context) * 0.05,
                            left: deviceWidth(context) * 0.05,
                            bottom: deviceWidth(context) * 0.05),
                            
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                child: Text(
                              "To take",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )),
                            Container(
                              padding: EdgeInsets.only(right: 30),
                              child: CircleAvatar(
                                backgroundColor: Colors.pink.shade50,
                                radius: 15,
                                child: IconButton(
                                  padding: EdgeInsets.zero,
                                  icon: Icon(Icons.add),
                                  color: Colors.black,
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Medicines(),
                      
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
