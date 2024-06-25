import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/paper_provider.dart';
import '../widgets/result_display.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Summary Result'),
      ),
      body: Consumer<PaperProvider>(
        builder: (context, paperProvider, child) {
          if (paperProvider.summary == null) {
            return Center(child: CircularProgressIndicator());
          } else {
            return ResultDisplay(summary: paperProvider.summary!);
          }
        },
      ),
    );
  }
}
