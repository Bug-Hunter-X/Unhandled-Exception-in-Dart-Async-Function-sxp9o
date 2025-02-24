```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Process the data here
      final jsonData = json.decode(response.body);
      // Use jsonData
    } else {
      // Handle error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exception here
    print('Error: $e');
    rethrow; // Re-throw the exception to be handled further up the call stack if needed.
  }
}

void main() async {
  try {
    await fetchData();
    print('Data fetched successfully!');
  } catch (e) {
    print('An error occurred: $e');
  }
}
```