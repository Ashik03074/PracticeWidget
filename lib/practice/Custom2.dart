import 'package:flutter/material.dart';

List list_of_colors = [
  Colors.amber,
  Colors.blueAccent,
  Colors.orange,
  Colors.redAccent,
  Colors.blue,
  Colors.amberAccent,
  Colors.purple,
  Colors.orangeAccent,
  Colors.purpleAccent,
  Colors.deepPurpleAccent,
  Colors.greenAccent,
  Colors.indigoAccent,
  Colors.limeAccent
];

class CustomScroll2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverGrid.extent(
            maxCrossAxisExtent: 100,
            children: [
              ...list_of_colors.map((color) => Container(
                    height: 100,
                    color: color,
                    margin: EdgeInsets.all(8),
                    child: Center(
                      child: Text(
                        "${list_of_colors.indexOf(color)}",
                        textScaleFactor: 3,
                      ),
                    ),
                  ))
            ],
          ),
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                "Header 3",
                textScaleFactor: 1,
              ),
            ),
            expandedHeight: 110,
            floating: true,
            snap: true,
          ),
          SliverGrid.count(
            crossAxisCount: 2,
            children: [
              ...list_of_colors.map((color) => Container(
                    height: 100,
                    color: color,
                    margin: EdgeInsets.all(8),
                    child: Center(
                      child: Text(
                        "${list_of_colors.indexOf(color)}",
                        textScaleFactor: 3,
                      ),
                    ),
                  ))
            ],
          ),
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                "Header 3",
                textScaleFactor: 1,
              ),
            ),
            expandedHeight: 110,
            pinned: true,
            floating: true,
            snap: true,
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            ...list_of_colors.map((color) => Container(
                  height: 100,
                  color: color,
                  margin: EdgeInsets.all(8.0),
                  child: Center(
                    child: Center(
                      child: Text(
                        "${list_of_colors.indexOf(color)}",
                        textScaleFactor: 3,
                      ),
                    ),
                  ),
                ))
          ]))
        ],
      ),
    );
  }
}
