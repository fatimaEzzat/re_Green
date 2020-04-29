import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'buttom_button.dart';
import 'details_page.dart';
import 'package:re_green/product_datails.dart';
import 'product_datails.dart';


class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
 // var maleCardColor = inactiveCardColor;
  //var femaleCardColor = inactiveCardColor;
  Type selectedType;
  bool isChosen=false;



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
                          isChosen=true;
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
                          isChosen=true;
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
                          isChosen=true;
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
                          isChosen=true;
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
                          isChosen=true;
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
                         isChosen=true;
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
             buttonTitle:  'NEXT',
             onTap: (){
               if(isChosen){
                 ProductDetails product_details=ProductDetails();
               Navigator.push(context, MaterialPageRoute(
                 builder: (context)=> Details_page(
                   details:product_details.getProductDetails(selectedType) ,
                 ),
               ),);}
               else{
                 Alert(context: context, title: "RFLUTTER", desc: "Choose Product First").show();
               }

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





