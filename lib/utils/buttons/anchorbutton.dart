import 'package:alpondith_web/utils/colormanager/colormanager.dart';
import 'package:flutter/material.dart';

class AnchorButton extends StatelessWidget {
  final String btnName;
  final btnIcon;
  const AnchorButton({
    Key? key,
    required this.btnName,
    this.btnIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Row(
        children: [Icon(btnIcon), Text(btnName)],
      ),
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: ColorManager.SECONDARY,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        textStyle: TextStyle(
            fontSize: 24,
            fontFamily: 'Inconsolota',
            fontWeight: FontWeight.w300),
        shape: StadiumBorder(),
      ),
    );
  }
}
