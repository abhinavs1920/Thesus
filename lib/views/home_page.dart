import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/paper_provider.dart';
import '../widgets/paper_form.dart';
import 'result_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thesus'),
      ),
      body: ChangeNotifierProvider(
        create: (_) => PaperProvider(),
        child: PaperForm(),
      ),
    );
  }
}
