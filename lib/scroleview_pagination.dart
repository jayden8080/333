import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  final ScrollController _scrollController = ScrollController();
  List _data = [];
  int _page = 1;
  bool _isLoading = false;
  bool _hasMoreData = true;

  @override
  void initState() {
    super.initState();
    _fetchData();
    _scrollController.addListener(() {
      if (_scrollController.position.extentAfter < 300 && !_isLoading && _hasMoreData) {
        _fetchData();
      }
    });
  }

  Future<void> _fetchData() async {
    setState(() {
      _isLoading = true;
    });

    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums?_page=$_page&_limit=10'));
    if (response.statusCode == 200) {
      List newData = json.decode(response.body);
      setState(() {
        _data.addAll(newData);
        _isLoading = false;
        if (newData.length < 10) {
          _hasMoreData = false;
        } else {
          _page++;
        }
      });
    } else {
      setState(() {
        _isLoading = false;
        _hasMoreData = false;
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagination Example'),
      ),
      body: _data.isEmpty && _isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        controller: _scrollController,
        itemCount: _data.length + (_hasMoreData ? 1 : 0),
        itemBuilder: (context, index) {
          if (index == _data.length) {
            return Center(child: CircularProgressIndicator());
          }
          return ListTile(
            title: Text('Item ${_data[index]['id']}'),
            subtitle: Text(_data[index]['title']),
          );
        },
      ),
    );
  }
}