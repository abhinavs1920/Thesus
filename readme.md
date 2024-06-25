# Thesus - Research Paper Summarizer

Thesus is an online platform built with Flutter, Flask, MongoDB, and ChatGPT-API. It allows users to enter the title and author of a research paper, select the format in which they need the summary, and specify the points they require. The application then generates a summary using the ChatGPT API and returns it in the desired format (PDF, CSV, Overleaf, etc.).

## Features

- User-friendly interface with minimalist black and white design
- Responsive design for mobile and web
- Integration with ChatGPT-API for advanced text summarization
- Multiple output formats: PDF, CSV, Overleaf
- JSON response with summary data
- Automatic upload to AWS and link generation

## Technologies Used

- **Flutter**: For the frontend of the application
- **Flask**: For the backend API
- **MongoDB**: For storing paper data
- **ChatGPT-API**: For generating summaries
- **AWS**: For storing and sharing generated files

## Setup Instructions

### Prerequisites

- Flutter SDK: [Installation Guide](https://flutter.dev/docs/get-started/install)
- Dart SDK: Included with Flutter
- Python: For running Flask backend
- MongoDB: For storing data
- AWS account: For file storage and link generation

## How It Works

1. **User Input**: The user enters the title and author of the research paper, selects the summary format, and specifies the points they require.
2. **API Request**: The Flutter app sends a request to the Flask backend with the user input.
3. **ChatGPT Processing**: The Flask backend forwards the request to the ChatGPT-API, which generates the summary.
4. **File Generation**: The Flask backend generates the summary in the requested format (PDF, CSV, Overleaf).
5. **AWS Upload**: The generated files are uploaded to AWS, and a link is generated.
6. **Response**: The Flask backend sends the summary data and the file link back to the Flutter app, which displays it to the user.

## Testing

### Frontend

The frontend is tested using Flutter's built-in testing framework. To run the tests, use:
```bash
flutter test
```