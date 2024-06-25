import 'package:flutter/material.dart';

class ResultDisplay extends StatelessWidget {
  final Map<String, dynamic> summary;

  ResultDisplay({required this.summary});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Title: ${summary['title']}'),
          SizedBox(height: 10),
          Text('Author: ${summary['author']}'),
          SizedBox(height: 10),
          Text('Summary:'),
          SizedBox(height: 10),
          Text(summary['summary']),
        ],
      ),
    );
  }
}
