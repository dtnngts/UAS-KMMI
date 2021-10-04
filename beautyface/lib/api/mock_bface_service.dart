import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/models.dart';

// Mock recipe service that grabs sample json data to mock recipe request/response
class MockBFaceService {
  // Batch request that gets both today recipes and friend's feed
  Future<DataBeranda> getDataBeranda() async {
    final todayTips= await _getTodayTips();
    final friendPosts = await _getFriendFeed();

    return DataBeranda(todayTips);
  }

  // Get sample explore recipes json to display in ui
  Future<List<BerandaTip>> _getTodayTips() async {
    // Simulate api request wait time
    await Future.delayed(const Duration(milliseconds: 1000));
    // Load json from file system
    final dataString =
        await _loadAsset('assets/sample_data/sample_explore_recipes.json');
    // Decode to json
    final Map<String, dynamic> json = jsonDecode(dataString);

    // Go through each recipe and convert json to ExploreRecipe object.
    if (json['tips'] != null) {
      final tips = <BerandaTip>[];
      json['recipes'].forEach((v) {
        tips.add(BerandaTip.fromJson(v));
      });
      return tips;
    } else {
      return [];
    }
  }

  // Get the sample friend json posts to display in ui
  Future<List<Post>> _getFriendFeed() async {
    // Simulate api request wait time
    await Future.delayed(const Duration(milliseconds: 1000));
    // Load json from file system
    final dataString =
        await _loadAsset('assets/sample_data/sample_friends_feed.json');
    // Decode to json
    final Map<String, dynamic> json = jsonDecode(dataString);

    // Go through each post and convert json to Post object.
    if (json['feed'] != null) {
      final posts = <Post>[];
      json['feed'].forEach((v) {
        posts.add(Post.fromJson(v));
      });
      return posts;
    } else {
      return [];
    }
  }

  // Get the sample recipe json to display in ui
  Future<List<SimpleTip>> getTips() async {
    // Simulate api request wait time
    await Future.delayed(const Duration(milliseconds: 1000));
    // Load json from file system
    final dataString =
        await _loadAsset('assets/sample_data/sample_tips.json');
    // Decode to json
    final Map<String, dynamic> json = jsonDecode(dataString);

    // Go through each recipe and convert json to SimpleRecipe object.
    if (json['tips'] != null) {
      final tips = <SimpleTip>[];
      json['tips'].forEach((v) {
        tips.add(SimpleTip.fromJson(v));
      });
      return tips;
    } else {
      return [];
    }
  }

  // Loads sample json data from file system
  Future<String> _loadAsset(String path) async {
    return rootBundle.loadString(path);
  }
}
