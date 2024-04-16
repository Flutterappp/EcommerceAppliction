import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class THelperFunction {
  static Color? getColor(String value) {
    ///Define your product specific colors here and it will match the attributes colors and sepecific

    if (value == "Green") {
      return Colors.green;
    } else if (value == "Green") {
      return Colors.green;
    } else if (value == 'Red') {
      return Colors.red;
    } else if (value == 'Blue') {
      return Colors.blue;
    } else if (value == 'Pink') {
      return Colors.pink;
    } else if (value == 'Grey') {
      return Colors.grey;
    } else if (value == 'Purple') {
      return Colors.purple;
    } else if (value == 'Black') {
      return Colors.black;
    } else if (value == 'white') {
      return Colors.white;
    } else if (value == 'Brown') {
      return Colors.brown;
    } else if (value == 'Teal') {
      return Colors.teal;
    } else if (value == 'indigo') {
      return Colors.indigo;
    } else {
      return null;
    }
  }

  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  static void showAlert(String tital, String message) {
    showDialog(
        context: Get.context!,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(tital),
            content: Text(message),
            actions: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('OK'))
            ],
          );
        }
        );
  }
  static void navigatorToScreen(BuildContext context, Widget screen){
    Navigator.push(context,
    MaterialPageRoute(builder: (_)=>screen),
    );
  }
  static String trunateText(String text, int maxLength){
    if (text.length > maxLength){
      return text;
    }else{
      return '${text.substring(0,maxLength)}....';
    }
  }
  static bool isDarkMode(BuildContext context){
    return Theme.of(context).brightness == Brightness.dark;
  }
  static Size sizeScreen(){
    return MediaQuery.of(Get.context!).size;
  }
  static double screenHight(){
    return MediaQuery.of(Get.context!).size.height;
     }
     static double screenWidth(){
    return MediaQuery.of(Get.context!).size.width;
     }
     static String getFormattedDate(DateTime date,{String format = 'dd MMM yyy'}){
      return DateFormat(format).format(date);
     }
     static List<T>removeDuplicates<T>(List<T> list){
      return list.toSet().toList();
     }
     static List<Widget>wrapWidgets(List<Widget>widgets,int rowSize){
      final wrappedList = <Widget>[];
      for (var i = 0; i < widgets.length; i+=rowSize){
        final rowChildern = widgets.sublist(i, i+rowSize>widgets.length?widgets.length:i+rowSize);
        wrappedList.add(Row(children: rowChildern));
      }
      return wrappedList;
      }
      
     }


