import 'package:flutter/material.dart';
import '../components/components.dart';
import '../models/models.dart';

class TipsGridView extends StatelessWidget {
  final List<SimpleTip> tips;

  const TipsGridView({Key key, this.tips}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        child: GridView.builder(
            itemCount: tips.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 1500.0),
            itemBuilder: (context, index) {
              final simpleTip = tips[index];
              return TipThumbnail(tip: simpleTip);
            }));
  }
}
