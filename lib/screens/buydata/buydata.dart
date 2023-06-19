import 'package:flutter/material.dart';

class DataPage extends StatelessWidget {
  const DataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Icon(Icons.close, color: Colors.deepOrange,),
        title: Text('Buy Data', style: TextStyle(color:Colors.black),),
          centerTitle:true
      ),
    );
  }
}
