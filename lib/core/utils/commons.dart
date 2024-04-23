import 'package:flutter/material.dart';

// import 'package:fluttertoast/fluttertoast.dart';
void navigateTo(BuildContext context, Widget screen) {
  Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
}

void navigateAndFinish(BuildContext context, Widget screen) {
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => screen));
}

void showSnackBar(String msg, BuildContext context) {
  SnackBar snackBar = SnackBar(
    backgroundColor: Colors.blueGrey,
    content: Text(
      msg,
    ),
    // action: SnackBarAction(
    //   label: 'close',
    //   onPressed: () {
    //     //
    //   },
    // ),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
// void showToastMsg(String msg){
//   Fluttertoast.showToast(
//         msg: "This is Center Short Toast",
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.CENTER,
//         backgroundColor: Colors.red,
//         textColor: Colors.white,
//         fontSize: 16.0
//     );
// }

void showBottomSheetMethod(context, widget) {
  showModalBottomSheet(
      // backgroundColor: Colors.black,
      context: context,
      builder: (context) {
        return widget;
      });
}
