import 'package:flutter/material.dart';

void main() => {
      runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Lists(),
      ))
    };

class Lists extends StatelessWidget {
  const Lists({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> _widget = List.generate(
        15,
        ((index) => Container(
              child: Text("My Title is $index"),
            )));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text("Hello Lists"),
        actions: [
          Icon(Icons.connected_tv),
          SizedBox(
            width: 20.0,
          ),
          Icon(Icons.search),
          SizedBox(
            width: 20.0,
          ),
          Icon(Icons.more_vert)
        ],
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList.radio(
          children: _widget
              .map((e) => ExpansionPanelRadio(
                  value: e,
                  headerBuilder: (BuildContext context, bool isExpanded) =>
                      ListTile(
                        title: Text(
                          "My Title",
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                  body: e))
              .toList(),
        ),
      ),
    );
  }
}
