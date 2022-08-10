import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OperationButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function callBack;

  const OperationButton(
      {Key? key,
      required this.text,
      required this.fillColor,
      required this.textColor,
      required this.textSize,
      required this.callBack})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        height: 60,
        width: 60,
        child: RawMaterialButton(
          elevation: 2.0,
          fillColor: Color(fillColor),
          shape: CircleBorder(),
          child: Text(
            text,
            style: GoogleFonts.rubik(
                textStyle:
                    TextStyle(fontSize: textSize, color: Color(textColor))),
          ),
          onPressed: () => {
            callBack(text),
          },
          // color: Color(fillColor),
          // textColor: Color(textColor),
        ),
      ),
    );
    ;
  }
}
