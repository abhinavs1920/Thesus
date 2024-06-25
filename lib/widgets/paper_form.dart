import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/paper_model.dart';
import '../providers/paper_provider.dart';
import '../views/result_page.dart';

class PaperForm extends StatefulWidget {
  @override
  _PaperFormState createState() => _PaperFormState();
}

class _PaperFormState extends State<PaperForm> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _authorController = TextEditingController();
  String _summaryFormat = 'PDF';
  final _pointsController = TextEditingController();

  void _submit() {
    if (_formKey.currentState!.validate()) {
      final paper = Paper(
        title: _titleController.text,
        author: _authorController.text,
        summaryFormat: _summaryFormat,
        points: _pointsController.text.split(','),
      );
      final paperProvider = Provider.of<PaperProvider>(context, listen: false);
      paperProvider.setPaper(paper);
      paperProvider.fetchSummary().then((_) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ResultPage()),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: _titleController,
              decoration: InputDecoration(labelText: 'Title'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a title';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _authorController,
              decoration: InputDecoration(labelText: 'Author'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter an author';
                }
                return null;
              },
            ),
            DropdownButtonFormField<String>(
              value: _summaryFormat,
              items: ['PDF', 'CSV', 'Overleaf'].map((format) {
                return DropdownMenuItem<String>(
                  value: format,
                  child: Text(format),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _summaryFormat = value!;
                });
              },
              decoration: InputDecoration(labelText: 'Summary Format'),
            ),
            TextFormField(
              controller: _pointsController,
              decoration: InputDecoration(labelText: 'Points (comma separated)'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submit,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
