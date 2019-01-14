import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Widget',
      home: Scaffold(   // 脚手架
          body: Padding(  // Padding widget 是内部有一定的padding值
        padding: const EdgeInsets.all(40.0),  // flutter中所有数字必须为浮点数
        child: Column(  // Column widget  让内部元素竖向排列
          children: <Widget>[
            Text('最简易展示'),
            Text(
              'Hello Widget webApp VS React Native VS Flutter VS Other = 猿类的生活好苦逼,我们该穿上黄马甲,然后用统治者献血来染一下黄马甲,我们喜欢红色的.我这样说会不会被打死啊.如果会那就当我说梦话吧.因为我怂...',
              textAlign: TextAlign.center, // 居中对齐
              maxLines: 1, // 最大行数
              overflow: TextOverflow.ellipsis, // ...
              textScaleFactor:1.50, // 缩放比例
              style: TextStyle(
                fontSize: 23.0,   // 字号
                color: Color.fromARGB(255, 255, 125, 125),
                background: new Paint()..color=Colors.yellow,  // android无效
                decoration: TextDecoration.underline, // 下划线
                decorationStyle: TextDecorationStyle.solid, // 实线
              ),
            ),
            Text.rich(TextSpan(
              children:[
                TextSpan(
                  text:'网址:'
                ),
                TextSpan(
                  text:'https://pheromone.github.io/',
                  style:TextStyle(
                    color:Colors.blue
                  ),
                )
              ]
            ))
          ],
        ),
      )),
    );
  }
}
