```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData here
      print('Data fetched successfully: $jsonData'); //Improved feedback
    } else {
      // Handle HTTP errors gracefully
      print('HTTP Error: ${response.statusCode} - ${response.reasonPhrase}');
    }
  } on FormatException catch (e) {
    // Handle JSON decoding errors specifically
    print('JSON Decoding Error: $e');
  } on SocketException catch (e) {
    //Handle network errors specifically
    print('Network Error: $e');
  } catch (e) {
    // Handle other exceptions
    print('An unexpected error occurred: $e');
  }
}
```