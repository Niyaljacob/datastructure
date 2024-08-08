
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const platform = MethodChannel('com.example/mychannel');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('MethodChannel Example')),
        body: Center(
          child: ElevatedButton(
            onPressed: _getNativeData,
            child: Text('Get Native Data'),
          ),
        ),
      ),
    );
  }

  Future<void> _getNativeData() async {
    try {
      final String result = await platform.invokeMethod('getNativeData');
      print('Native data: $result');
    } on PlatformException catch (e) {
      print("Failed to get native data: '${e.message}'.");
    }
  }
}
