import 'package:get/get.dart';
import 'package:hive/hive.dart';

part 'counterInterface.g.dart';

@HiveType(typeId: 1)
class CountList {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final int count;
  @HiveField(3)
  final double percentage;
  CountList(this.id, this.name, this.count, this.percentage);
}
