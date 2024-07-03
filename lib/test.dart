
 import 'package:e_commereceapp/core/functions/checkinternet.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  var res;

  intialdata() async {
    res = await checkInternet();
    print(res);
  }

  @override
  void initState() {
    intialdata();
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
  }