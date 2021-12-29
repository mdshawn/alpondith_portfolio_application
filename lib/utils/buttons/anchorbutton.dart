import 'package:alpondith_web/utils/colormanager/colormanager.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AnchorButton extends StatelessWidget {
  final String btnName;
  final btnIcon;
  final String urlGet;
  const AnchorButton({
    Key? key,
    required this.btnName,
    this.btnIcon,
    required this.urlGet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Row(
        children: [Icon(btnIcon), Text(btnName)],
      ),
      onPressed: _launchURL,
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

  void _launchURL() async {
    String url = "$urlGet";
    if (!await launch(url)) throw 'Could not launch $url';
  }
}
