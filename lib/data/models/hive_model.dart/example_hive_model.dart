import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../core/hive/hive_type_id.dart';
import '../../../domain/entities/example.dart';

part 'example_hive_model.g.dart';

@HiveType(typeId: HiveTypeId.example)
class ExampleHiveModel extends Equatable {
  @HiveField(0)
  final String? id;

  const ExampleHiveModel({
    this.id,
  });

  factory ExampleHiveModel.fromEntity(Example entity) => ExampleHiveModel(
        id: entity.id,
      );

  Example toEntity() => Example(
        id: id,
      );

  @override
  List<Object?> get props => [
        id,
      ];
}
