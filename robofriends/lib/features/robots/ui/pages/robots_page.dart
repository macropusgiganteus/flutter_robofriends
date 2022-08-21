import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:robofriends/features/robots/data/repositories/robot_repository.dart';
import 'package:robofriends/features/robots/logic/cubit/robots_cubit.dart';
import 'package:robofriends/features/robots/ui/widgets/robot_list.dart';

class RobotPage extends StatelessWidget {
  const RobotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          RobotsCubit(context.read<RobotRepository>())..getRobots(),
      child: const _RobotPage(),
    );
  }
}

class _RobotPage extends StatelessWidget {
  const _RobotPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ROBOFRIENDS')),
      body: SafeArea(
          child: Container(
        height: 600,
        padding: const EdgeInsets.all(10),
        child: BlocBuilder<RobotsCubit, RobotsState>(
          builder: (context, state) {
            return RobotList(state.robots, key);
          },
        ),
      )),
    );
  }
}
