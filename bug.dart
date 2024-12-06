```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Successfully fetched data
      final jsonData = jsonDecode(response.body);
      // Process jsonData here
    } else {
      // Handle HTTP errors
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle other exceptions (e.g., network errors)
    print('Error fetching data: $e');
    // Consider rethrowing the exception or handling it differently
    rethrow; // Rethrows the exception to be handled by a higher level
  }
}
```