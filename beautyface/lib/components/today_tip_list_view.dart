import 'package:flutter/material.dart';
import '../components/components.dart';
import '../models/models.dart';

class TodayTipListView extends StatelessWidget {
  final List<BerandaTip> tips;

  const TodayTipListView({Key key, this.tips}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Beauty of the day 💄 ',
              style: Theme.of(context).textTheme.headline1),
          const SizedBox(height: 16),
          Container(
              height: 400,
              color: Colors.transparent,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: tips.length,
                  itemBuilder: (context, index) {
                    final tip = tips[index];
                    return buildCard(tip);
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 16);
                  })),
        ]));
  }

  Widget buildCard(BerandaTip tip) {
    if (tip.cardType == TipCardType.card1) {
      return Card1(tip: tip);
    } else if (tip.cardType == TipCardType.card2) {
      return Card2(tip: tip);
    } else if (tip.cardType == TipCardType.card3) {
      return Card3(tip: tip);
    } else {
      throw Exception('This card doesn\'t exist yet');
    }
  }
}
