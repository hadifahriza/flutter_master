import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart' as fpdart;

import '../../core/classes/failure.dart';
import '../../core/classes/network_result.dart';
import '../../domain/entities/example.dart';
import '../../domain/usecases/example/get_example_usecase.dart';
import '../global_widgets/dialog/show_snackbar_dialog.dart';
import 'example_page_args.dart';

class ExamplePageNotifier extends ChangeNotifier {
  // NOTIFIER STATE
  bool _isDisposed = false;

  // UseCase
  final GetExampleUseCase _getExampleUseCase;

  ExamplePageNotifier(
    this._getExampleUseCase,
  );

  @override
  void dispose() {
    _isDisposed = true;
    super.dispose();
  }

  void safeNotifyListeners() {
    if (!_isDisposed) {
      notifyListeners();
    }
  }

  void initState(BuildContext context, ExamplePageArgs? args) {
    changeArgs(args);
  }

  ExamplePageArgs? _args;
  ExamplePageArgs? get args => _args;
  void changeArgs(ExamplePageArgs? value) {
    _args = value;
    safeNotifyListeners();
  }

  NetworkResult<Example> _alarmsDataState = ResultEmpty();
  NetworkResult<Example> get alarmsDataState => _alarmsDataState;
  void changeAlarmsDataState(NetworkResult<Example> result) {
    _alarmsDataState = result;
    safeNotifyListeners();
  }

  Future<void> getAlarmsData(BuildContext context) async {
    changeAlarmsDataState(ResultLoading());

    fpdart.Either<Failure, Example> result = await _getExampleUseCase.call(
      const GetExampleUseCaseParams(),
    );

    result.fold(
      (l) {
        changeAlarmsDataState(ResultError(l.message));
        showSnackbarDialog(context, l.message, SnackbarType.error);
      },
      (r) {
        changeAlarmsDataState(ResultHasData(r));
      },
    );
  }
}
