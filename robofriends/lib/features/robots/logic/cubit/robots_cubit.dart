import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:robofriends/constants/enums.dart';
import 'package:robofriends/features/robots/data/providers/robot_provider.dart';
import 'package:robofriends/features/robots/data/repositories/robot_repository.dart';

import '../../data/model/Robot.dart';

part 'robots_state.dart';

class RobotsCubit extends Cubit<RobotsState> {
  final RobotRepository _robotRepository;
  RobotsCubit(this._robotRepository)
      : super(const RobotsState(RobotsFetchState.fetching, []));

  Future<void> getRobots() async {
    final robots = await _robotRepository.getRobots();

    emit(RobotsState(RobotsFetchState.success, robots));
  }
}
