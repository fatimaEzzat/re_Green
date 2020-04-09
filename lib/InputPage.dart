import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'buttom_button.dart';

enum Type{oil,cartoon, paper ,food, metal ,plastic}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
 // var maleCardColor = inactiveCardColor;
  //var femaleCardColor = inactiveCardColor;
  Type selectedType;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ReGreen'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text('Choose The Product',style: kLargeText,),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableWidget(
                      onPress: (){
                        setState(() {
                          selectedType=Type.oil;
                        });
                      },
                      myColor: selectedType==Type.oil? kActiveCardColor:kInactiveCardColor ,
                      cardChild: IconContent(
                        text: 'OIL', icon: FontAwesomeIcons.oilCan,),
                    ),

                ),
                Expanded(
                    child: ReusableWidget(
                      onPress: (){
                        setState(() {
                          selectedType=Type.cartoon;
                        });
                      },
                      myColor: selectedType==Type.cartoon? kActiveCardColor:kInactiveCardColor,
                      cardChild: IconContent(
                        text: 'CARTON', icon: FontAwesomeIcons.cube,),
                    ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableWidget(
                      onPress: (){
                        setState(() {
                          selectedType=Type.food;
                        });
                      },
                      myColor: selectedType==Type.food? kActiveCardColor:kInactiveCardColor ,
                      cardChild: IconContent(
                        text: 'FOOD', icon: FontAwesomeIcons.recycle,),
                    ),

                ),
                Expanded(
                    child: ReusableWidget(
                      onPress: (){
                        setState(() {
                          selectedType=Type.paper;
                        });
                      },
                      myColor: selectedType==Type.paper? kActiveCardColor:kInactiveCardColor,
                      cardChild: IconContent(
                        text: 'PAPER', icon: FontAwesomeIcons.pager,),
                    ),
                ),
              ],

            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableWidget(
                      onPress: (){
                        setState(() {
                          selectedType=Type.metal;
                        });
                      },
                      myColor: selectedType==Type.metal? kActiveCardColor:kInactiveCardColor ,
                      cardChild: IconContent(
                        text: 'METAL', icon: FontAwesomeIcons.newspaper,),
                  ),
                ),
                Expanded(
                    child: ReusableWidget(
                      onPress: (){
                       setState(() {
                         selectedType=Type.plastic;
                       });
                      },
                      myColor: selectedType==Type.plastic? kActiveCardColor:kInactiveCardColor,
                      cardChild: IconContent(
                        text: 'PLASTIC', icon: FontAwesomeIcons.wineBottle,),
                    ),
                ),
              ],
            ),
          ),
          ButtomButton(
            buttonTitle: 'NEXT',
            onTap:(){
            },
          ),
          SizedBox(
            height: 17.0,
          ),
        ],
      ),
    );
  }
}




