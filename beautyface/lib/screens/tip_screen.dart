import 'package:flutter/material.dart';
import '../api/mock_bface_service.dart';
import '../components/components.dart';

class TipsScreen extends StatelessWidget {
  final berandaService = MockBFaceService();

  TipsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: berandaService.getTips(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return TipsGridView(tips: snapshot.data);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
