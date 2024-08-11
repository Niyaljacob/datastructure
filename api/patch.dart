import 'dart:convert'; // For encoding data to JSON
import 'package:http/http.dart' as http;

// Function to make a PATCH request
Future<void> patchData(String url, Map<String, dynamic> data) async {
  try {
    // Perform the PATCH request
    final response = await http.patch(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json', // Indicate that the data being sent is in JSON format
      },
      body: jsonEncode(data), // Convert the data map to a JSON string
    );

    // Check if the request was successful
    if (response.statusCode == 200) {
      // Successfully updated
      print('Update successful: ${response.body}');
    } else {
      // Handle errors
      print('Failed to update. Status code: ${response.statusCode}');
      print('Response body: ${response.body}');
    }
  } catch (e) {
    // Handle any exceptions that occur
    print('Error: $e');
  }
}
