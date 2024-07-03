import 'package:e_commereceapp/core/class/crud.dart';
import 'package:e_commereceapp/linkapi.dart';

class TestData{
Crud crud;

TestData(this.crud);


getData()async{
var response=await crud.postData(AppLink.test  ,  {});
response.fold((l) => l, (r) => r);
}

}