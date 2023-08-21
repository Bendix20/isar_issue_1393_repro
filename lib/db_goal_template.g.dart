// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_goal_template.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetDbGoalTemplateCollection on Isar {
  IsarCollection<String, DbGoalTemplate> get dbGoalTemplates =>
      this.collection();
}

const DbGoalTemplateSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'DbGoalTemplate',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'id',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'title',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'description',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'longDescription',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'isDefault',
        type: IsarType.bool,
      ),
      IsarPropertySchema(
        name: 'isUnique',
        type: IsarType.bool,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<String, DbGoalTemplate>(
    serialize: serializeDbGoalTemplate,
    deserialize: deserializeDbGoalTemplate,
    deserializeProperty: deserializeDbGoalTemplateProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeDbGoalTemplate(IsarWriter writer, DbGoalTemplate object) {
  IsarCore.writeString(writer, 1, object.id);
  IsarCore.writeString(writer, 2, object.title);
  IsarCore.writeString(writer, 3, object.description);
  IsarCore.writeString(writer, 4, object.longDescription);
  IsarCore.writeBool(writer, 5, object.isDefault);
  IsarCore.writeBool(writer, 6, object.isUnique);
  return Isar.fastHash(object.id);
}

@isarProtected
DbGoalTemplate deserializeDbGoalTemplate(IsarReader reader) {
  final String _id;
  _id = IsarCore.readString(reader, 1) ?? '';
  final String _title;
  _title = IsarCore.readString(reader, 2) ?? '';
  final String _description;
  _description = IsarCore.readString(reader, 3) ?? '';
  final String _longDescription;
  _longDescription = IsarCore.readString(reader, 4) ?? '';
  final bool _isDefault;
  _isDefault = IsarCore.readBool(reader, 5);
  final bool _isUnique;
  _isUnique = IsarCore.readBool(reader, 6);
  final object = DbGoalTemplate(
    id: _id,
    title: _title,
    description: _description,
    longDescription: _longDescription,
    isDefault: _isDefault,
    isUnique: _isUnique,
  );
  return object;
}

@isarProtected
dynamic deserializeDbGoalTemplateProp(IsarReader reader, int property) {
  switch (property) {
    case 1:
      return IsarCore.readString(reader, 1) ?? '';
    case 2:
      return IsarCore.readString(reader, 2) ?? '';
    case 3:
      return IsarCore.readString(reader, 3) ?? '';
    case 4:
      return IsarCore.readString(reader, 4) ?? '';
    case 5:
      return IsarCore.readBool(reader, 5);
    case 6:
      return IsarCore.readBool(reader, 6);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _DbGoalTemplateUpdate {
  bool call({
    required String id,
    String? title,
    String? description,
    String? longDescription,
    bool? isDefault,
    bool? isUnique,
  });
}

class _DbGoalTemplateUpdateImpl implements _DbGoalTemplateUpdate {
  const _DbGoalTemplateUpdateImpl(this.collection);

  final IsarCollection<String, DbGoalTemplate> collection;

  @override
  bool call({
    required String id,
    Object? title = ignore,
    Object? description = ignore,
    Object? longDescription = ignore,
    Object? isDefault = ignore,
    Object? isUnique = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (title != ignore) 2: title as String?,
          if (description != ignore) 3: description as String?,
          if (longDescription != ignore) 4: longDescription as String?,
          if (isDefault != ignore) 5: isDefault as bool?,
          if (isUnique != ignore) 6: isUnique as bool?,
        }) >
        0;
  }
}

sealed class _DbGoalTemplateUpdateAll {
  int call({
    required List<String> id,
    String? title,
    String? description,
    String? longDescription,
    bool? isDefault,
    bool? isUnique,
  });
}

class _DbGoalTemplateUpdateAllImpl implements _DbGoalTemplateUpdateAll {
  const _DbGoalTemplateUpdateAllImpl(this.collection);

  final IsarCollection<String, DbGoalTemplate> collection;

  @override
  int call({
    required List<String> id,
    Object? title = ignore,
    Object? description = ignore,
    Object? longDescription = ignore,
    Object? isDefault = ignore,
    Object? isUnique = ignore,
  }) {
    return collection.updateProperties(id, {
      if (title != ignore) 2: title as String?,
      if (description != ignore) 3: description as String?,
      if (longDescription != ignore) 4: longDescription as String?,
      if (isDefault != ignore) 5: isDefault as bool?,
      if (isUnique != ignore) 6: isUnique as bool?,
    });
  }
}

extension DbGoalTemplateUpdate on IsarCollection<String, DbGoalTemplate> {
  _DbGoalTemplateUpdate get update => _DbGoalTemplateUpdateImpl(this);

  _DbGoalTemplateUpdateAll get updateAll => _DbGoalTemplateUpdateAllImpl(this);
}

sealed class _DbGoalTemplateQueryUpdate {
  int call({
    String? title,
    String? description,
    String? longDescription,
    bool? isDefault,
    bool? isUnique,
  });
}

class _DbGoalTemplateQueryUpdateImpl implements _DbGoalTemplateQueryUpdate {
  const _DbGoalTemplateQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<DbGoalTemplate> query;
  final int? limit;

  @override
  int call({
    Object? title = ignore,
    Object? description = ignore,
    Object? longDescription = ignore,
    Object? isDefault = ignore,
    Object? isUnique = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (title != ignore) 2: title as String?,
      if (description != ignore) 3: description as String?,
      if (longDescription != ignore) 4: longDescription as String?,
      if (isDefault != ignore) 5: isDefault as bool?,
      if (isUnique != ignore) 6: isUnique as bool?,
    });
  }
}

extension DbGoalTemplateQueryUpdate on IsarQuery<DbGoalTemplate> {
  _DbGoalTemplateQueryUpdate get updateFirst =>
      _DbGoalTemplateQueryUpdateImpl(this, limit: 1);

  _DbGoalTemplateQueryUpdate get updateAll =>
      _DbGoalTemplateQueryUpdateImpl(this);
}

class _DbGoalTemplateQueryBuilderUpdateImpl
    implements _DbGoalTemplateQueryUpdate {
  const _DbGoalTemplateQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<DbGoalTemplate, DbGoalTemplate, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? title = ignore,
    Object? description = ignore,
    Object? longDescription = ignore,
    Object? isDefault = ignore,
    Object? isUnique = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (title != ignore) 2: title as String?,
        if (description != ignore) 3: description as String?,
        if (longDescription != ignore) 4: longDescription as String?,
        if (isDefault != ignore) 5: isDefault as bool?,
        if (isUnique != ignore) 6: isUnique as bool?,
      });
    } finally {
      q.close();
    }
  }
}

extension DbGoalTemplateQueryBuilderUpdate
    on QueryBuilder<DbGoalTemplate, DbGoalTemplate, QOperations> {
  _DbGoalTemplateQueryUpdate get updateFirst =>
      _DbGoalTemplateQueryBuilderUpdateImpl(this, limit: 1);

  _DbGoalTemplateQueryUpdate get updateAll =>
      _DbGoalTemplateQueryBuilderUpdateImpl(this);
}

extension DbGoalTemplateQueryFilter
    on QueryBuilder<DbGoalTemplate, DbGoalTemplate, QFilterCondition> {
  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition> idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      idGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      idLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      idLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition> idBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      idContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition> idMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      titleGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      titleGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      titleLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      titleLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      titleBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      titleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      titleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      descriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      descriptionGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      descriptionGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      descriptionLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      descriptionLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      descriptionBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 3,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      longDescriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      longDescriptionGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      longDescriptionGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      longDescriptionLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      longDescriptionLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      longDescriptionBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      longDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      longDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      longDescriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      longDescriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 4,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      longDescriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      longDescriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      isDefaultEqualTo(
    bool value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterFilterCondition>
      isUniqueEqualTo(
    bool value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 6,
          value: value,
        ),
      );
    });
  }
}

extension DbGoalTemplateQueryObject
    on QueryBuilder<DbGoalTemplate, DbGoalTemplate, QFilterCondition> {}

extension DbGoalTemplateQuerySortBy
    on QueryBuilder<DbGoalTemplate, DbGoalTemplate, QSortBy> {
  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterSortBy> sortById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterSortBy> sortByIdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterSortBy> sortByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterSortBy> sortByTitleDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterSortBy> sortByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterSortBy>
      sortByDescriptionDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterSortBy>
      sortByLongDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterSortBy>
      sortByLongDescriptionDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterSortBy> sortByIsDefault() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterSortBy>
      sortByIsDefaultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterSortBy> sortByIsUnique() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6);
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterSortBy>
      sortByIsUniqueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc);
    });
  }
}

extension DbGoalTemplateQuerySortThenBy
    on QueryBuilder<DbGoalTemplate, DbGoalTemplate, QSortThenBy> {
  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterSortBy> thenById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterSortBy> thenByIdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterSortBy> thenByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterSortBy> thenByTitleDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterSortBy> thenByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterSortBy>
      thenByDescriptionDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterSortBy>
      thenByLongDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterSortBy>
      thenByLongDescriptionDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterSortBy> thenByIsDefault() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterSortBy>
      thenByIsDefaultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterSortBy> thenByIsUnique() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6);
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterSortBy>
      thenByIsUniqueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc);
    });
  }
}

extension DbGoalTemplateQueryWhereDistinct
    on QueryBuilder<DbGoalTemplate, DbGoalTemplate, QDistinct> {
  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterDistinct>
      distinctByDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterDistinct>
      distinctByLongDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterDistinct>
      distinctByIsDefault() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5);
    });
  }

  QueryBuilder<DbGoalTemplate, DbGoalTemplate, QAfterDistinct>
      distinctByIsUnique() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(6);
    });
  }
}

extension DbGoalTemplateQueryProperty1
    on QueryBuilder<DbGoalTemplate, DbGoalTemplate, QProperty> {
  QueryBuilder<DbGoalTemplate, String, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<DbGoalTemplate, String, QAfterProperty> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<DbGoalTemplate, String, QAfterProperty> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<DbGoalTemplate, String, QAfterProperty>
      longDescriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<DbGoalTemplate, bool, QAfterProperty> isDefaultProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<DbGoalTemplate, bool, QAfterProperty> isUniqueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }
}

extension DbGoalTemplateQueryProperty2<R>
    on QueryBuilder<DbGoalTemplate, R, QAfterProperty> {
  QueryBuilder<DbGoalTemplate, (R, String), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<DbGoalTemplate, (R, String), QAfterProperty> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<DbGoalTemplate, (R, String), QAfterProperty>
      descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<DbGoalTemplate, (R, String), QAfterProperty>
      longDescriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<DbGoalTemplate, (R, bool), QAfterProperty> isDefaultProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<DbGoalTemplate, (R, bool), QAfterProperty> isUniqueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }
}

extension DbGoalTemplateQueryProperty3<R1, R2>
    on QueryBuilder<DbGoalTemplate, (R1, R2), QAfterProperty> {
  QueryBuilder<DbGoalTemplate, (R1, R2, String), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<DbGoalTemplate, (R1, R2, String), QOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<DbGoalTemplate, (R1, R2, String), QOperations>
      descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<DbGoalTemplate, (R1, R2, String), QOperations>
      longDescriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<DbGoalTemplate, (R1, R2, bool), QOperations>
      isDefaultProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<DbGoalTemplate, (R1, R2, bool), QOperations> isUniqueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }
}
