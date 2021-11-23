import 'package:flutter/material.dart';

class CreateSplitPage extends StatefulWidget {
  const CreateSplitPage({Key? key}) : super(key: key);

  @override
  _CreateSplitPageState createState() => _CreateSplitPageState();
}

class _CreateSplitPageState extends State<CreateSplitPage> {
  final pages = [
    Container(color: Colors.red,),
    Container(color: Colors.green,),
    Container(color: Colors.blue,),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(
          top: true,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () => backPage(),
              ),
              Text('${index + 1} - ${pages.length}')
            ],
          ),
        ),
      ),
      body: pages[index],
      floatingActionButton: index < pages.length - 1
        ? FloatingActionButton(
            onPressed: () => nextPage(),
            child: Icon(Icons.add),
          )
        : Container(),
    );
  }

  backPage() {
    if (index > 0) {
      setState(() => index--);
    }
  }

  nextPage() {
    if (index < pages.length - 1) {
      setState(() => index++);
    }
  }
}
