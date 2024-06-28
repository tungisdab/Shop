import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search', style: TextStyle(fontSize: 36),),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search, size: 36,),
            onPressed: () {},
          ),
        ],
      ),
      body: const Center(
        child: Text('Search'),
      ),
    );
  }
}