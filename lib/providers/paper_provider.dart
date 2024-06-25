import 'package:flutter/material.dart';
import '../models/paper_model.dart';
import '../services/api_service.dart';

class PaperProvider with ChangeNotifier {
  final ApiService apiService = ApiService();
  Paper? _paper;
  Map<String, dynamic>? _summary;

  Paper? get paper => _paper;
  Map<String, dynamic>? get summary => _summary;

  void setPaper(Paper paper) {
    _paper = paper;
    notifyListeners();
  }

  Future<void> fetchSummary() async {
    if (_paper != null) {
      _summary = await apiService.fetchSummary(_paper!);
      notifyListeners();
    }
  }
}
