import 'package:flutter/widgets.dart';

class WidgetSelector<T> extends StatelessWidget {
  final Map<T, Widget> states;
  final T selectedState;

  WidgetSelector({
    @required this.selectedState,
    @required this.states,
  });

  @override
  Widget build(BuildContext context) {
    return states[selectedState] ?? Container();
  }
}

class DataState {
  final EnumSelector enumSelector;
  final String message;

  DataState({
    @required this.enumSelector,
    this.message,
  });

  bool operator ==(o) {
    DataState dataState = o;
    var b = enumSelector == dataState.enumSelector;
    return b;
  }

  @override
  int get hashCode => enumSelector.hashCode;
}

enum EnumSelector {
  none,
  loading,
  error,
  success,
}