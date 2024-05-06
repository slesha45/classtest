import 'package:classtest/common_widget.dart/my_button.dart';
import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  final String nameData;
  const GridViewScreen({required this.nameData, super.key});

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  late List<String> letters;
  late List<bool> isClicked;

  @override
  void initState() {
    letters = widget.nameData.split('');
    isClicked = List.generate(widget.nameData.length, (index) => false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View"),
        backgroundColor: Colors.lime,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          for (int i = 0; i < letters.length; i++)
            MyButton(
              text: letters[i],
              isClicked: isClicked[i],
              onPressed: () {
                setState(() {
                  if (isClicked[i]) {
                    letters.removeAt(i);
                    isClicked.removeAt(i);
                  } else {
                    isClicked[i] = true;
                  }
                });
              },
            ),
        ],
      ),
    );
  }
}
