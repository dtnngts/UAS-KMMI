import 'package:flutter/material.dart';
import '../models/models.dart';

class TipThumbnail extends StatelessWidget {
  final SimpleTip tip;

  const TipThumbnail({Key key, this.tip}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
              child: ClipRRect(
                  child: Image.asset('${tip.dishImage}', fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(12))),
          const SizedBox(height: 10),
          Text(tip.title,
              maxLines: 1, style: Theme.of(context).textTheme.bodyText1),
          Text(tip.harga, style: Theme.of(context).textTheme.bodyText1)
        ]));
  }
}
