import 'package:flutter/material.dart';

class CustomDragScreen extends StatefulWidget {
  const CustomDragScreen({Key? key}) : super(key: key);

  @override
  _CustomDragScreenState createState() => _CustomDragScreenState();
}

class _CustomDragScreenState extends State<CustomDragScreen> {
  Color? color;
  var value = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drag Button'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Draggable<Color>(
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
                ),
                feedback: Container(
                  height: 100,
                  width: 100,
                  color: Colors.grey,
                ),
                data: Colors.black,
                onDragEnd: (details) => print('Drag is end'),
                onDragStarted: () => print('Drag is started'),
                onDraggableCanceled: (velocity, offset) =>
                    print('${velocity.pixelsPerSecond} , $offset'),
              ),
              DragTarget<Color>(
                builder: (context, candidateData, rejectedData) =>
                    GestureDetector(
                  onDoubleTap: () {
                    setState(() {
                      color = null;
                    });
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: color != null ? color : Colors.grey[200],
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Fill this color',
                      style: TextStyle(
                          color: color != null ? Colors.white : Colors.black),
                    ),
                  ),
                ),
                onAccept: (data) {
                  setState(() {
                    color = data;
                  });
                },
                onLeave: (data) => print(data),
                onMove: (details) => print(details.offset),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
