import 'package:common_utils/common_utils.dart';
import 'package:flutter/material.dart';
import 'package:time_machine_flutter_app/time_machine_util.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('时光机'),
      ),
      body: RaisedButton(
        onPressed: () {
          print(new DateTime(2016,01,00));

          /**
           * 过去/未来某一天 getTimestampLatest返回的是时间戳 
           * bool phase 这个参数 true:是零点 false:是23.59.59
           */
          print(DateUtil.formatDate(
              DateTime.fromMillisecondsSinceEpoch(
                  TimeMachineUtil.getTimestampLatest(true, 3)),
              format: 'yyyy-MM-dd')); //未来第三天
          print(DateUtil.formatDate(
              DateTime.fromMillisecondsSinceEpoch(
                  TimeMachineUtil.getTimestampLatest(true, -3)),
              format: 'yyyy-MM-dd')); //过去第三天
          print(DateUtil.formatDate(
              DateTime.fromMillisecondsSinceEpoch(
                  TimeMachineUtil.getTimestampLatest(true, 0)),
              format: 'yyyy-MM-dd')); //今天

          TimeMachineUtil.getStartEndYearDate(6); //未来第6年
          TimeMachineUtil.getStartEndYearDate(-6); //过去第6年
          TimeMachineUtil.getStartEndYearDate(0); //今年

          TimeMachineUtil.getMonthDate(1); //下个月
          TimeMachineUtil.getMonthDate(0); //这个月
          TimeMachineUtil.getMonthDate(4); //未来第四个月
          TimeMachineUtil.getMonthDate(-6); //过去的第六个月

          TimeMachineUtil.getWeeksDate(0); //本周
          TimeMachineUtil.getWeeksDate(1); //下一周
          TimeMachineUtil.getWeeksDate(-8); //之前的第8周
          TimeMachineUtil.getWeeksDate(10); //未来的第10周
        },
      ),
    );
  }
}
