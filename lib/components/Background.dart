import 'package:flutter/material.dart';

import 'package:easycontab/contants/app_assets.dart';

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover, 
            image: AssetImage(Assets.office),      
          ),
        ),
      );
  }
}