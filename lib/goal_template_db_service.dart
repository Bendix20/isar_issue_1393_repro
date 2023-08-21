import 'package:isar/isar.dart';
import 'package:isar_bug/db_goal_template.dart';
import 'package:path_provider/path_provider.dart';

class GoalTemplateDbService {
  static Future<GoalTemplateDbService> create() async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.openAsync(
      schemas: [
        DbGoalTemplateSchema,
      ],
      directory: dir.path,
    );

    return GoalTemplateDbService._(
      isar: isar,
    );
  }

  final Isar _isar;

  GoalTemplateDbService._({required Isar isar}) : _isar = isar;

  Future<void> replaceAll(List<DbGoalTemplate> goalTemplates) async {
    await _isar.writeAsyncWith(goalTemplates, (isar, templates) async {
      isar.dbGoalTemplates.putAll(templates);
    });
  }
}
