import 'package:flutter/foundation.dart';
import 'package:robofriends/features/robots/data/providers/robot_provider.dart';

import '../model/Robot.dart';

class RobotRepository {
  RobotRepository({RobotProvider? robotProvider})
      : _robotProvider = robotProvider ?? RobotProvider();
  final RobotProvider _robotProvider;

  Future<List<Robot>> getRobots() async {
    debugPrint('Getting robots...');
    final res = await _robotProvider.getRobots();
    final robots = res.map((e) => Robot.fromMap(e)).toList();

    return robots;
  }
}
