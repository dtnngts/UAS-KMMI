import 'package:flutter/material.dart';
import '../api/mock_bface_service.dart';
import '../components/components.dart';

class BerandaScreen extends StatelessWidget {
  final mockService = MockBFaceService();

  BerandaScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: mockService.getDataBeranda(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView(scrollDirection: Axis.vertical, children: [
              TodayTipListView(tips: snapshot.data.todayTips),
              const SizedBox(height: 16),
             
            ]);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
