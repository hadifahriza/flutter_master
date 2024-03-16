import '../../domain/entities/example.dart';

class ExampleModel extends Example {
  const ExampleModel({
    super.id,
  });

  factory ExampleModel.fromJson(Map<String, dynamic> json) => ExampleModel(
        id: json['id'],
      );

  Example toEntity() => Example(
        id: id,
      );
}
