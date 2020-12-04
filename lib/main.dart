import 'package:flutter/material.dart';
import 'api/index.dart';
import 'api/NWApi.dart';
import 'api/NWMethod.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AI-错题宝',
      theme: ThemeData(
        primaryColor: Color(0xffE50304),
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    DioManager().request<Object>(NWMethod.POST, NWApi.teacherLogin,
        params: {"token": "0533wxGa1pJY6A0WXfHa1rXEGJ33wxGm"}, success: (data) {
      print("success data = $data");
    }, error: (error) {
      print("error code = ${error.code}, massage = ${error.message}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Center(
        child: Text(
          'You have pushed the button this many times:',
        ),
      ),
    );
  }
}
