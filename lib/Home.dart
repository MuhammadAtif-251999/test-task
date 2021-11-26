import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class MainPage extends StatefulWidget {


  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              child: TextField(
                  keyboardType: TextInputType.text,
                  // autocorrect: true,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 1)
                    ),
                    prefixIcon:Icon(Icons.search_outlined,color: Colors.black,),
                      labelText: 'Search Services',
                    labelStyle: TextStyle(color: Colors.black),
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 1),
                      ),
                      )
              ),
            ),
            Row(
              children: <Widget>[
                Flexible(child:  Container(
                  padding: EdgeInsets.only(left: 14,right: 4,),
                  child: TextField(
                      keyboardType: TextInputType.text,
                      // autocorrect: true,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(4.0)),
                        ),
                        prefixIcon:Icon(Icons.location_on_outlined, color: Colors.black,),
                        labelText: 'ZIP Code',
                        labelStyle: TextStyle(color: Colors.black),
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue, width: 5),
                        ),
                      )
                  ),
                ),),
                Padding(
                  padding: const EdgeInsets.only(right: 14,),
                  child: Container(
                    width: 120,height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      color: Colors.blue
                    ),
                    child:Center(child: Text('Get Started', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),),
                )
              ],
            ),
            SizedBox(height: 20,),
            Text('BROWSE BY SERVICE GATEGORY', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 15),),
             Row(
             children: [
               Container(width: 120,height: 130,
                 child:  Image.asset("images/Group1.png") ,
               ),
               Container(width: 120,height: 130,
                 child:  Image.asset("images/Group2.png") ,
               ),
               Container(width: 120,height: 130,
                 child:  Image.asset("images/Group3.png") ,
               ),
             ],
           ),

            SizedBox(height: 30,),
            Container(
              child:  Image.asset("images/1.png") ,
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
              child: Center(
                child: Text('NEED A PLUMBER, ELECTRICIAN OR ACCOUNTANT?WE CAN FIND'
                            ' ANY OF THOSE FOR YOU. aND THE BEST PART IS THAT ITS FREE SO'
                            ' COME JOIN US!', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
              child: Center(
                child: Text('Service quotations, employer reviews, and real time chat functionality '
                   ' between you and your service provider all in one app.'
                    , style: TextStyle(color: Colors.black,),),
              ),
            ),

            Container(
              child:  Image.asset("images/2.png") ,
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
              child: Center(
                child: Text('We’ll make your services worth your time, and effort.'
                   , style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
              child: Center(
                child: Text('Joining us as a professional service provider is simple and easy. Create '
                  'your work profile, upload your resume and credentials to get started! You'
                  'simply just need an account with us today so that you can start receiving'
                  'assignments in no time at all'

                  , style: TextStyle(color: Colors.black,),),
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: MaterialButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                elevation: 5.0,
                minWidth: 200.0,
                height: 50,
                color: Colors.blue,
                child: new Text('Join Us',
                    style: new TextStyle(fontSize: 16.0, color: Colors.white)),
                onPressed: () {},
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Container(
                height: 250,
               width: MediaQuery.of(context).size.width,
               decoration: BoxDecoration(
                 color: Colors.blue
               ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                      child: Center(
                        child: Text('Explore the best provider near you'
                          , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                      child: Center(
                        child: Text('Your job will be sent to our qualified service professionals. You will get'
                                     'matched through SMART AI bidding process and they will send you a quote'
                                      'that matches what you need! '

                          , style: TextStyle(color: Colors.white,),),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.white60, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(5.0))),
                        elevation: 0.0,
                        minWidth: 200.0,
                        height: 50,
                        color: Colors.blue,
                        child: new Text('Explore Now',
                            style: new TextStyle(fontSize: 16.0, color: Colors.white)),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      )
    );
  }
}
