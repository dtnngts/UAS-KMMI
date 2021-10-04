import 'package:flutter/material.dart';
import '../models/models.dart';

import '../bface_theme.dart';
import 'author_card.dart';

class Card2 extends StatelessWidget {
  final BerandaTip tip;

  const Card2({Key key, this.tip}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(tip.backgroundImage), fit: BoxFit.cover),
            borderRadius: const BorderRadius.all(Radius.circular(10.0))),
        child: Column(
          children: [
            AuthorCard(
                authorName: tip.authorName,
                title: tip.role,
                imageProvider: AssetImage(tip.profileImage)),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(
                      tip.title,
                      style: BFaceTheme.lightTextTheme.headline1,
                    ),
                  ),
                  Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        tip.subtitle,
                        style: BFaceTheme.lightTextTheme.headline1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
