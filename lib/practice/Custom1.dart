import 'package:flutter/material.dart';

class CustomScroll1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          color: Colors.teal,
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            snap: true,
            //title: Text("Not Flexible"),
            //centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("flexible"),
              centerTitle: true,
            ),
            expandedHeight: 120,
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (BuildContext Context, int index) {
              return Container(
                height: 50,
                color: index.isOdd ? Colors.white : Colors.black12,
                child: Center(
                  child: Text(
                    "${index + 1}",
                    textScaleFactor: 3,
                  ),
                ),
              );
            },
            childCount: 25,
          ))
        ],
      ),
    );
  }
}
