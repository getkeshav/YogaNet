import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class TfliteModel extends StatefulWidget {
  const TfliteModel({Key? key}) : super(key: key);

  @override
  _TfliteModelState createState() => _TfliteModelState();
}

class _TfliteModelState extends State<TfliteModel> {
  // late File _image;
  // late List _results;
  // bool imageSelect = false;
  // @override
  // void initState() {
  //   super.initState();
  //   loadModel();
  // }

  // Future loadModel() async {
  //   Tflite.close();
  //   String res;
  //   res = (await Tflite.loadModel(
  //       model: "assets/model.tflite", labels: "assets/labels.txt"))!;
  //   print("Models loading status: $res");
  // }

  // Future imageClassification(File image) async {
  //   final List? recognitions = await Tflite.runModelOnImage(
  //     path: image.path,
  //     numResults: 6,
  //     threshold: 0.05,
  //     imageMean: 127.5,
  //     imageStd: 127.5,
  //   );
  //   setState(() {
  //     _results = recognitions!;
  //     _image = image;
  //     imageSelect = true;
  //   });
  // }
  MaterialStateProperty<Color> getColor(Color color, Color colorPressed) {
    final getColor = (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return colorPressed;
      } else {
        return color;
      }
    };
    return MaterialStateProperty.resolveWith(getColor);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: new AssetImage("assets/logo6.jpg"), fit: BoxFit.cover)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            // appBar: AppBar(
            //   title: const Text("Image Classification"),
            // ),

            body: Align(
              alignment: Alignment(0.0, 0.857),
              child: Link(
                  target: LinkTarget.blank,
                  uri: Uri.parse("https://59110.gradio.app/"),
                  builder: (context, followLink) => ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor: getColor(Colors.red, Colors.white),
                        backgroundColor: getColor(Colors.white, Colors.red),
                      ),
                      onPressed: followLink,
                      child: Text("Test it Yourself"))

                  // GestureDetector(
                  //     onTap: followLink,
                  //     child: Text(
                  //       "Test it Yourself",
                  //       style: TextStyle(
                  //           fontSize: 32,
                  //           color: Colors.blue,
                  //           decoration: TextDecoration.underline),
                  //     )),
                  // body: Align(
                  //   alignment: Alignment(0.0, 0.855),
                  //   child: ElevatedButton(
                  //     child: Text('Try it Yourself'),
                  //     onPressed: () async {
                  //       final url = " htttps://google.com";
                  //       //     if(await canLaunch(url)){
                  //       //       await launch(url):
                  //       //     }
                  //       openBrowserURl(url: url, inApp: true);
                  //     },
                  //   ),

                  // child: Link(
                  // builder:(context,followLink)=> ElevatedButton(onPressed: (){}, child: Text("Test It Yourself"),),
                  // )
                  // ListView(
                  //   children: [
                  //     (imageSelect)?Container(
                  //   margin: const EdgeInsets.all(10),
                  //   child: Image.file(_image),
                  // ):Container(
                  //   margin: const EdgeInsets.all(10),
                  //       child: const Opacity(
                  //         opacity: 0.8,
                  //         child: Center(
                  //           child: Text("No image selected"),
                  //         ),
                  //       ),
                  // ),
                  //     SingleChildScrollView(
                  //       child: Column(
                  //         children: (imageSelect)?_results.map((result) {
                  //           return Card(
                  //             child: Container(
                  //               margin: EdgeInsets.all(10),
                  //               child: Text(
                  //                 "${result['label']} - ${result['confidence'].toStringAsFixed(2)}",
                  //                 style: const TextStyle(color: Colors.red,
                  //                 fontSize: 20),
                  //               ),
                  //             ),
                  //           );
                  //         }).toList():[],

                  //       ),
                  //     )
                  //   ],
                  // ),
                  // floatingActionButton: FloatingActionButton(
                  //   onPressed: pickImage,
                  //   tooltip: "Pick Image",
                  //   child: const Icon(Icons.image),
                  // ),
                  ),
            )));
// MaterialStateProperty<Color> getColor(Color color, Color colorPressed){
//    final getColor= (Set<MaterialState> states) {
//      if(states.contains(MaterialState.pressed)){
//        return colorPressed;
//      } else{
//        return color;
//      }
//    };
// }
    //   Future openBrowserURl({
    //     required String url,
    //     bool inApp = false,
    //   }) async {
    //     if (await canLaunch(url)) {
    //       await launch(
    //         url,
    //         forceWebView: inApp,
    //         enableJavaScript: true,
    //       );
    //     }
    //  }
  }
  // Future pickImage()
  // async {
  //   final ImagePicker _picker = ImagePicker();
  //   final XFile? pickedFile = await _picker.pickImage(
  //     source: ImageSource.gallery,
  //   );
  //   File image=File(pickedFile!.path);
  //   imageClassification(image);
  // }
}
