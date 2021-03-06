import 'package:flutter_baidu_yingyan_trace/src/model/point.dart';

/// 急刹车点
class HarshBreakingPoint extends Point {
  /// 实际加速度，单位：m/s^2
  double? acceleration;

  /// 刹车前时速，单位：km/h
  double? initialSpeed;

  /// 刹车后时速，单位：km/h
  double? endSpeed;

  HarshBreakingPoint.fromMap(Map map)
      : assert(map != null), // ignore: unnecessary_null_comparison
        super.fromMap(map) {
    acceleration = map['acceleration'];
    initialSpeed = map['initialSpeed'];
    endSpeed = map['endSpeed'];
  }

  @override
  Map toMap() {
    Map map = super.toMap();
    map['acceleration'] = this.acceleration;
    map['initialSpeed'] = this.initialSpeed;
    map['endSpeed'] = this.endSpeed;
    return map;
  }
}
