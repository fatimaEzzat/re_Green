import 'package:flutter/material.dart';

enum Type { oil, cartoon, paper, food, metal, plastic }

class ProductDetails {


  Map details = {
    Type.oil: '   1.Designate a container in your house for used cooking oil. Metal coffee cans or plastic butter containers work great, but make sure it’s labeled so no one accidentally drinks it. You don’t need to keep it refrigerated unless you want to reuse it.\n'
        ''
        '2.Keep filling the container with new oil each time you cook ...                         \n                        '
        '3.Use our Recycling Locator to see if there is a recycling location for cooking oil in your area ...\n',
    Type.cartoon: 'carton dfdffffffffffffffffffff',
    Type.food: 'food cxcx fdfd gmfd skldle mdlkllvc vmkldldl msdmfm sdmklfdmkfk',
    Type.paper: ' paperccdfefnf  dfrgr vfrv',
    Type.metal: 'metal ddf',
    Type.plastic: 'plastic dfdfdf vfvd fefd'
  };

  String getProductDetails(key) {
    return details[key];
  }
}
