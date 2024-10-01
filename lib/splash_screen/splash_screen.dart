
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final _key = GlobalKey<FormState>();
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController ageCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key:_key,
        child: Column(
          children: [
            Image.network("assets/images.png",
            height: 200,width: 200,fit: BoxFit.fill,),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: BorderSide(color: Colors.red,
                width: 0.2),
              ),
              elevation: 10,
              shadowColor: Colors.red,
              child: Container(
                height: 200,
                width: 200,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Name",
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Age",
              ),
            ),
            SizedBox(height: 20,),
            IconButton(onPressed: (){
              if(_key.currentState!.validate()){
                showDialog(context: context, builder: (_)
                =>AlertDialog(
                  title: Text("user Info"),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("${nameCtrl.text}"),
                      Text("${ageCtrl.text}"),
                    ],
                  ),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    },
                        child: Text("ok")),
                  ],
                ));
                // debugPrint("user name:${nameCtrl.
                // text}age:${ageCtrl.text}");
              }
            },
                hoverColor: Colors.orange,
                color: Colors.red,
                style: IconButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                icon: Icon(Icons.arrow_forward_rounded)),
          ],
        ),

      ),
    );
  }
}
