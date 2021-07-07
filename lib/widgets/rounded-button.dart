import 'package:flutter/material.dart';

import '../pallete.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key key,
    @required this.buttonName,
    this.pushName
  }) : super(key: key);

  final String buttonName;
  final String pushName;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kGreen,
      ),
      child: FlatButton(
        onPressed: () {Navigator.pushNamed(context, pushName);},
        child: Text(
          buttonName,
          style: kTextButton.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
