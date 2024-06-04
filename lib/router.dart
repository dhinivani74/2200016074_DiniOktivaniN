import 'package:flutter/material.dart';

class RouterProvider extends ChangeNotifier {
  ReplyRoutePath _routePath = const ReplyHomePath();

  ReplyRoutePath get routePath => _routePath;

  set routePath(ReplyRoutePath path) {
    _routePath = path;
    notifyListeners();
  }
}

@immutable
abstract class ReplyRoutePath {
  const ReplyRoutePath();
}

class ReplyHomePath extends ReplyRoutePath {
  const ReplyHomePath();
}

class ReplySearchPath extends ReplyRoutePath {
  const ReplySearchPath();
}
