import 'package:isar/isar.dart';

part 'db_goal_template.g.dart';

@collection
class DbGoalTemplate {
  final String id;
  final String title;
  final String description;
  final String longDescription;
  final bool isDefault;
  final bool isUnique;

  DbGoalTemplate({
    required this.id,
    required this.title,
    required this.description,
    required this.longDescription,
    required this.isDefault,
    required this.isUnique,
  });
}
