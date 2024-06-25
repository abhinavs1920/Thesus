class Paper {
  final String title;
  final String author;
  final String summaryFormat;
  final List<String> points;

  Paper({
    required this.title,
    required this.author,
    required this.summaryFormat,
    required this.points,
  });

  Map<String, dynamic> toJson() => {
    'title': title,
    'author': author,
    'summaryFormat': summaryFormat,
    'points': points,
  };
}
