import 'package:club_calendar/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DialogScreen extends StatefulWidget {
  const DialogScreen({Key key}) : super(key: key);

  @override
  _DialogScreenState createState() => _DialogScreenState();
}

class _DialogScreenState extends State<DialogScreen> {
  @override
  Styles styles = new Styles();
  Widget build(BuildContext context) {
    return Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.all(10),
         child: Stack(
            overflow: Overflow.visible,
          alignment: Alignment.center,
              children: <Widget>[
            Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),

               ),
               padding: EdgeInsets.fromLTRB(20, 50, 20, 20),

              child: Container(

                decoration: BoxDecoration(
                    color: Styles.backgroundColor,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text(
                      "Rate Event",
                      style: TextStyle(
                        color: Styles.buttonColor,
                        fontSize: 25,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RatingBar.builder(
                        initialRating: 3,
                        minRating: 0,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 30,
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
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(




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
                                  child: AspectRatio(
                                    aspectRatio:4,

                                    child: TextFormField(
                                      minLines: 1,
                                      maxLines: 5,
                                      keyboardType: TextInputType.multiline,
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
              ),

    ),


    ],
    )
    );


  }
}
