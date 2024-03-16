import 'package:equatable/equatable.dart';

class Example extends Equatable {
  final String? id;

  const Example({
    this.id,
  });

  @override
  List<Object?> get props => [
        id,
      ];
}
