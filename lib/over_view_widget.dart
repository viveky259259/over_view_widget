import 'package:flutter/material.dart';

class CustomScaffold extends StatefulWidget {
  final Widget child;

  CustomScaffold({Key key, @required this.child}) : super(key: key);

  @override
  _CustomScaffoldState createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQueryData.fromWindow(WidgetsBinding.instance?.window),
      child: Material(
        color: Colors.red,
        child: Container(
          padding: EdgeInsets.all(64),
          child: widget.child,
        ),
      ),
    );
  }
}

class OverViewWidget extends StatefulWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  /// Your application
  final Widget child;

  OverViewWidget({@required this.navigatorKey, @required this.child})
      : super(key: navigatorKey);

  @override
  _OverViewWidgetState createState() => _OverViewWidgetState();
}

class _OverViewWidgetState extends State<OverViewWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(child: widget.child);
  }
}
