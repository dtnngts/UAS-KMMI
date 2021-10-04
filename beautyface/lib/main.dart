import 'package:flutter/material.dart';
import 'bface_theme.dart';
import 'home.dart';
import 'package:provider/provider.dart';
import 'models/models.dart';

void main() {
  runApp(const BFace());
}

class BFace extends StatelessWidget {
  const BFace({Key key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = BFaceTheme.light();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BeautyFace',
      theme: theme,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => TabManager(),
          ),
         
        ],
        child: const Home(),
      ),
    );
  }
}
