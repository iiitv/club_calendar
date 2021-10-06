import 'package:club_calendar/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AppFeedback extends StatelessWidget {
  const AppFeedback({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {



    double deviceHeight = MediaQuery.of(context).size.height,
        deviceWidth = MediaQuery.of(context).size.width;

    Styles styles = new Styles();
    return SingleChildScrollView(
      child: Column(

        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(

              child: Center(
                child: Text("Like Using Club Calendar",
                  style: styles.headingStyle(),),
              ),


            ),
          ),

          Image.asset(
             "assets/icons/phone_feedback.PNG",
             fit: BoxFit.fill,
             scale:0.4
         ),


          Padding(
            padding: const EdgeInsets.only(top:10,),
            child: Column(
             children:[
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Card(
                   elevation: 0,
                   color: Styles.backgroundColor,
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [

                       Text("Overall experience ",
                         style: styles.cardHeadingStyle(),
                       ),

                       Padding(
                         padding: const EdgeInsets.only(top: 8.0),
                         child: RatingBar.builder(
                           initialRating: 3,
                           minRating: 0,
                           direction: Axis.horizontal,
                           allowHalfRating: true,
                           itemCount: 5,
                           itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                           itemBuilder: (context, _) => Icon(
                             Icons.star,
                             color: Colors.amber,
                           ),
                           unratedColor: Colors.white,
                           onRatingUpdate: (rating) {
                             print("Overall Experience : ${rating}");
                           },
                         ),
                       )



                     ],

                   ),
                 ),
               ),


               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Card(
                   elevation: 0,
                   color: Styles.backgroundColor,
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [

                       Text("Event details ",
                         style: styles.cardHeadingStyle(),
                       ),

                       Padding(
                         padding: const EdgeInsets.only(top: 8.0),
                         child: RatingBar.builder(
                           initialRating: 3,
                           minRating: 0,
                           direction: Axis.horizontal,
                           allowHalfRating: true,
                           itemCount: 5,
                           itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                           itemBuilder: (context, _) => Icon(
                             Icons.star,
                             color: Colors.amber,
                           ),
                           unratedColor: Colors.white,
                           onRatingUpdate: (rating) {
                             print("Event Details ${rating}");
                           },
                         ),
                       )



                     ],

                   ),
                 ),
               ),


               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Card(
                   elevation: 0,
                   color: Styles.backgroundColor,
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [

                       Padding(
                         padding: const EdgeInsets.only(left:10),
                         child: Text("Event announcements ",
                           style: TextStyle(
                             fontSize: 24,
                             color: Styles.fontColor

                           )
                         ),
                       ),

                       Padding(
                         padding: const EdgeInsets.only(top: 8.0),
                         child: RatingBar.builder(
                           initialRating: 3,
                           minRating: 0,
                           direction: Axis.horizontal,
                           allowHalfRating: true,
                           itemCount: 5,
                           itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                           itemBuilder: (context, _) => Icon(
                             Icons.star,
                             color: Colors.amber,
                           ),
                           unratedColor: Colors.white,
                           onRatingUpdate: (rating) {
                             print("Event announcements ${rating}");
                           },
                         ),
                       )



                     ],

                   ),
                 ),
               )
      ]
         ),
          ),

          SizedBox(height: deviceHeight*0.06),



          Stack(
            overflow: Overflow.visible,
            alignment: AlignmentDirectional.bottomStart,

            children: [
              Image.asset(
                "assets/icons/Vector_feedback1.png",
                fit: BoxFit.fill,
                scale:0.1
              ),

              Image.asset(
                  "assets/icons/Vector_feedback2.png",
                  fit: BoxFit.fill,
                  scale:0.1
              ),
              Positioned(

                left: deviceWidth * 0.045686541,
                right: deviceWidth * 0.012,
                  top: deviceHeight*0.001,

                 child: Column(
                   children: [
                    Container(

                      width: deviceWidth*0.6,
                      height: deviceHeight*0.16,


                      child: Neumorphic(
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.concave,
                              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                              depth: 4,
                              intensity: 0.5,
                              color: Colors.black12
                          ),
                           child: Card(

                            elevation: 3,
                            color: Styles.backgroundColor,

                             child: Center(
                                child: Container(

                                    child: Padding(
                                       padding: const EdgeInsets.all(8.0),
                                           child: TextField(
                                          style: TextStyle(
                                          color: Styles.fontColor
                                       ),
                                      decoration: InputDecoration(
                                      border: InputBorder.none,
                                       hintText: "Write review here",
                                       hintStyle: TextStyle(color:Colors.white),
                                          focusColor: Colors.white



                                      ),


                                    ),
                                    ),
                                ),
                             ),
                           ),
                      ),


                    ),

                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: ElevatedButton(
                         style: ElevatedButton.styleFrom(
                           primary: Styles.buttonColor,
                          elevation: 3,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
                           minimumSize: Size(100, 40), //////// HERE
                         ),
                        onPressed: () {},
                          child: Text('Rate Us',
                           style: TextStyle(
                               fontSize: 20,
                               fontWeight: FontWeight.w400

                           )
                          ),
                      ),
                     )

                  ],
                ),
              )


            ],
          ),
      ]
      ),
    );











  }
}
