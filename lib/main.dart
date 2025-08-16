import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(TreasureTaskApp());
}

class TreasureTaskApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '宝箱任务',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TreasureHomePage(),
    );
  }
}

class TreasureHomePage extends StatefulWidget {
  @override
  _TreasureHomePageState createState() => _TreasureHomePageState();
}

class _TreasureHomePageState extends State<TreasureHomePage> {
  final List<String> tasks = [
    '做一个深呼吸 🌬️',
    '学习一句法语 🗣️',
    '站起来走动一下 🚶',
    '看一个2分钟教学视频 🎥',
    '写下此刻的心情 ✍️',
  ];

  void _showRandomTask() {
    final random = Random();
    final task = tasks[random.nextInt(tasks.length)];

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('今日任务 🎯'),
        content: Text(task),
        actions: [
          TextButton(
            child: Text('我去做！'),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('生活改善宝箱'),
        centerTitle: true,
      ),
      body: Center(
        child: IconButton(
          iconSize: 120,
          icon: Image.asset('assets/teasure_box_noncommercial.png'), // 你可以换成宝箱图标
          onPressed: _showRandomTask,
        ),
      ),
    );
  }
}
