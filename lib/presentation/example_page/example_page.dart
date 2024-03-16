import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'example_page_args.dart';
import 'example_page_notifier.dart';

class ExamplePage extends StatefulWidget {
  final ExamplePageArgs? args;

  const ExamplePage({
    super.key,
    this.args,
  });

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      initNotifier();
    });
  }

  void initNotifier() {
    context.read<ExamplePageNotifier>().initState(context, widget.args);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Example Page'),
      ),
    );
  }
}
