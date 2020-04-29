import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:re_green/reusable_card.dart';
import 'constants.dart';
import 'buttom_button.dart';

class Details_page extends StatefulWidget {
  Details_page({@required this.details});

  final String details;

  @override
  _Details_pageState createState() => _Details_pageState();
}

class _Details_pageState extends State<Details_page> {
  String quantity;
  bool _value = false;

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ReGreen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            width: 40.0,
            height: 60.0,
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Text('Enter Quantity', style: kFeildTextLableStyle),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(right: 20.0),
                  child: TextField(
                    onChanged: (value) {
                      quantity = value;
                      print(quantity);
                    },
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0),
                    keyboardType: TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                    textAlign: TextAlign.center,
                    decoration: kDecorationOfTextFeild,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            flex: 5,
            child: ReusableWidget(
              myColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Read More Details About the product',
                    style: kTitleTextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(widget.details,
                        style: kProductInformationTextStyle),
                  ),
                  Row(
                    children: <Widget>[
                      Checkbox(
                        value: _value,
                        onChanged: (bool val) {
                          setState(() {
                            _value = val;
                          });
                        },
                        activeColor: Colors.black,
                      ),
                      Text(
                        'l adree to this',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ButtomButton(
            buttonTitle: 'Make A Request',
            onTap: () {
              if (_value && quantity != null) {
              } else {
                Alert(
                        context: context,
                        title: "RFLUTTER",
                        desc: "Invalid quantity or Not Chicked box")
                    .show();
              }
            },
          ),
        ],
      ),
    );
  }
}
