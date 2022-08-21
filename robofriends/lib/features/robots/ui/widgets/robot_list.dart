import 'package:flutter/material.dart';
import 'package:robofriends/features/robots/ui/widgets/robot_item.dart';

import '../../data/model/Robot.dart';

class RobotList extends StatelessWidget {
  final List<Robot> robots;

  const RobotList(this.robots, Key? key) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: robots
            .map((e) => RobotItem(id: e.id, name: e.name, email: e.email))
            .toList());
  }
}
