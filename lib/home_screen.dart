import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Hello World'),
              centerTitle: true,
            ),
          ),
          // SliverFillRemaining(
          //   child: Text('Hello world'),
          // )
          // SliverList(
          //     delegate: SliverChildBuilderDelegate((ctx, index) {
          //   return Text('Hello World');
          // }, childCount: 15))

          SliverGrid(
              delegate: SliverChildBuilderDelegate((ctx, index) {
                return Column(
                  children: [
                    Icon(Icons.work),
                    Text('Hello World'),
                  ],
                );
              }),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
              )),
        ],
      ),
    );
  }
}
