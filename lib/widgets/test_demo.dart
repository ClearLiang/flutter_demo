import 'package:flutter/material.dart';
import 'package:vp_flutter/api/apis.dart';
import 'package:vp_flutter/beans/movie_entity.dart';
import 'package:vp_flutter/beans/user1_entity.dart';
import 'package:vp_flutter/plugin/httpUtil.dart';

class TestDemo extends StatefulWidget {
  @override
  _TestDemoState createState() => _TestDemoState();
}

class _TestDemoState extends State<TestDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  String result = "信息";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Demo"),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              HttpUtil.getInstance().get<User1Entity>(
                Api.user1Url,
                (User1Entity result) {
                  result.persons.forEach((person) {
                    print(person.name);
                  });
                },
                errorCallBack: (errorMsg) {
                  print(errorMsg);
                },
              );
            },
            child: Text("User1数据"),
          ),
          RaisedButton(
            onPressed: () {
              HttpUtil.getInstance().get<MovieEntity>(
                Api.movieUrl,
                (MovieEntity result) {
                  result.movies.forEach((movie) {
                    print(movie.title);
                  });
                },
                errorCallBack: (errorMsg) {
                  print(errorMsg);
                },
              );
            },
            child: Text("电影数据"),
          ),
          Text(result),
        ],
      ),
    );
  }
}
