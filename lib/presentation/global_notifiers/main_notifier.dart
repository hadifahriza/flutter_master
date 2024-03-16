import 'package:flutter/foundation.dart';

class MainNotifier extends ChangeNotifier {
  // NOTIFIER STATE
  bool _isDisposed = false;

  // UseCase

  MainNotifier();

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

  void initState() {}
}
