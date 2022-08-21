part of 'robots_cubit.dart';

class RobotsState extends Equatable {
  final RobotsFetchState status;
  final List<Robot> robots;
  const RobotsState(this.status, this.robots);

  @override
  List<Object> get props => [status, robots];
}
