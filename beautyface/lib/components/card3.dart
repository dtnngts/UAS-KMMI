import 'package:flutter/material.dart';
import '../bface_theme.dart';
import '../models/models.dart';

class Card3 extends StatelessWidget {
  final BerandaTip tip;

  const Card3({Key key, this.tip}) : super(key: key);

  List<Widget> createTagChips() {
    final chips = <Widget>[];
    tip.tags.take(6).forEach((element) {
      final chip = Chip(
          label: Text(element, style: BFaceTheme.darkTextTheme.bodyText1),
          backgroundColor: Colors.black.withOpacity(0.7));
      chips.add(chip);
    });

    return chips;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(tip.backgroundImage), fit: BoxFit.cover),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.star, color: Colors.yellow, size: 40),
                  const SizedBox(height: 8),
                  Text(tip.title,
                      style:BFaceTheme.darkTextTheme.headline2),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            Center(
              child: Wrap(
                  alignment: WrapAlignment.start,
                  spacing: 12,
                  children: createTagChips()),
            ),
          ],
        ),
      ),
    );
  }
}
