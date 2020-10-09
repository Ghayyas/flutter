import 'package:flutter/material.dart';

import 'counter/counter.dart';

class CounterApp extends MaterialApp {
  const CounterApp({Key key})
      : super(
            key: key,
            debugShowCheckedModeBanner: false,
            home: const CounterPage());
}
