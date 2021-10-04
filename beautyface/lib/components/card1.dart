import 'package:flutter/material.dart';
import '../bface_theme.dart';
import '../models/models.dart';

class Card1 extends StatelessWidget {
  final BerandaTip tip;

  const Card1({Key key, this.tip}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Stack(
          children: [
            Text(
              tip.subtitle,
              style: BFaceTheme.darkTextTheme.bodyText1,
            ),
            Positioned(
              child: Text(
                tip.title,
                style: BFaceTheme.darkTextTheme.headline2,
              ),
              top: 20,
            ),
            Positioned(
              child: Text(
                tip.message,
                style: BFaceTheme.darkTextTheme.bodyText1,
              ),
              bottom: 30,
              right: 0,
            ),
            Positioned(
              child: Text(
                tip.authorName,
                style: BFaceTheme.darkTextTheme.bodyText1,
              ),
              bottom: 10,
              right: 0,
            )
          ],
        ),
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(tip.backgroundImage),
            fit: BoxFit.cover,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
