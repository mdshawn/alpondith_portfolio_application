import 'package:alpondith_web/utils/buttons/anchorbutton.dart';
import 'package:alpondith_web/utils/colormanager/colormanager.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/portfolio_controller.dart';

class PortfolioView extends GetView<PortfolioController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: ColorManager.PRIMARY,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://i.ibb.co/Df72vKg/Mujahidul-Islam-PP-SIZE-College-Dress.jpg"),
            radius: 100,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Mujahidul Islam",
            style: TextStyle(
                fontSize: 45,
                fontFamily: 'Inconsolota',
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Learning Since Born",
            style: TextStyle(
                fontSize: 24,
                fontFamily: 'Inconsolota',
                fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnchorButton(
                btnName: " Github",
                btnIcon: FontAwesomeIcons.github,
                urlGet: "https://github.com/mdshawn",
              ),
              SizedBox(
                width: 10,
              ),
              AnchorButton(
                btnName: " LinkedIn",
                btnIcon: FontAwesomeIcons.linkedin,
                urlGet: "",
              ),
              SizedBox(
                width: 10,
              ),
              AnchorButton(
                btnName: " Twitter",
                btnIcon: FontAwesomeIcons.twitter,
                urlGet: "",
              ),
              SizedBox(
                width: 10,
              ),
              AnchorButton(
                btnName: " Facebook",
                btnIcon: FontAwesomeIcons.facebook,
                urlGet: "https://facebook.com/md.shawn.101",
              ),
            ],
          )
        ],
      ),
    )));
  }
}
