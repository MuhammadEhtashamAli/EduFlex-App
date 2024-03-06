import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_pdf_viewer/easy_pdf_viewer.dart';
import 'package:eduflex/views/homepage/pdfUploadGet/pdfUploadScreen.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UploadGetPdf extends StatefulWidget {
  String path;

  UploadGetPdf({required this.path});

  @override
  State<UploadGetPdf> createState() => _UploadGetPdfState();
}

class _UploadGetPdfState extends State<UploadGetPdf> {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  List<Map<String, dynamic>> pdfData = [];

  //Uploading the file

  // Future<String> uploadPdf(String fileName, File file) async {
  //   final reference = FirebaseStorage.instance.ref().child(
  //       "islamiat/$fileName.pdf"); // Reference to the file in Firebase Storage
  //
  //   final uploadTask = reference.putFile(file);
  //
  //   await uploadTask
  //       .whenComplete(() => () {}); // Wait for the upload to complete
  //
  //   final downloadLink = await reference.getDownloadURL();
  //
  //   return downloadLink;
  // }
  //
  // void pickFile() async {
  //   final pickedFile = await FilePicker.platform.pickFiles(
  //     type: FileType.custom,
  //     allowedExtensions: ['pdf'],
  //   );
  //
  //   if (pickedFile != null) {
  //     String fileName = pickedFile.files[0].name;
  //     File file = File(pickedFile.files[0].path!);
  //     final downloadLink = await uploadPdf(fileName, file);
  //
  //     await _firebaseFirestore.collection("islamiat").add({
  //       "name": fileName,
  //       "url": downloadLink,
  //     });
  //
  //     print("Pdf Upload Successfully");
  //
  //   }
  // }

  void getAllPdf() async {
    final result =
        await FirebaseFirestore.instance.collection(widget.path).get();

    // final result = await _firebaseFirestore.collection("Boards/SindhBoard/Class9/Subjects/Math").get();

    pdfData = result.docs.map((e) => e.data() as Map<String, dynamic>).toList();

    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getAllPdf();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PDFs")),
      body: GridView.builder(
        scrollDirection: Axis.vertical,
        itemCount: pdfData.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PDFViewerScreen(
                      pdfUrl: pdfData[index]["url"],
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(border: Border.all()),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "images/pdfIcon.png",
                      width: 100,
                      height: 120,
                    ),
                    Center(child: Text(pdfData[index]["name"])),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.upload_file),
      //   onPressed: pickFile,
      // ),
    );
  }
}

// import 'dart:io';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:easy_pdf_viewer/easy_pdf_viewer.dart';
// import 'package:file_picker/file_picker.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
//
// class UploadGetPdf extends StatefulWidget {
//   const UploadGetPdf({Key? key}) : super(key: key);
//
//   @override
//   State<UploadGetPdf> createState() => _UploadGetPdfState();
// }
//
// class _UploadGetPdfState extends State<UploadGetPdf> {
//   final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
//   List<Map<String, dynamic>> pdfData = [];
//
//   Future<String> uploadPdf(String fileName, File file) async {
//     final reference = FirebaseStorage.instance.ref().child(
//         "board/$fileName.pdf"); // Reference to the file in Firebase Storage
//
//     final uploadTask = reference.putFile(file);
//
//     await uploadTask
//         .whenComplete(() => () {}); // Wait for the upload to complete
//
//     final downloadLink = await reference.getDownloadURL();
//
//     return downloadLink;
//   }
//
//   void pickFile() async {
//     final pickedFile = await FilePicker.platform.pickFiles(
//       type: FileType.custom,
//       allowedExtensions: ['pdf'],
//     );
//
//     if (pickedFile != null) {
//       String fileName = pickedFile.files[0].name;
//       File file = File(pickedFile.files[0].path!);
//       final downloadLink = await uploadPdf(fileName, file);
//
//       await _firebaseFirestore.collection("board").add({
//         "name": fileName,
//         "url": downloadLink,
//       });
//
//       print("Pdf Upload Successfully");
//     }
//   }
//
//   void getAllPdf() async {
//     final result = await _firebaseFirestore.collection("board").get();
//
//     pdfData = result.docs.map((e) => e.data() as Map<String, dynamic>).toList();
//
//     setState(() {});
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     getAllPdf();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("PDFs")),
//       body: GridView.builder(
//         scrollDirection: Axis.vertical,
//         itemCount: pdfData.length,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//         ),
//         itemBuilder: (BuildContext context, int index) {
//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: InkWell(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => PDFViewerScreen(
//                       pdfUrl: pdfData[index]["url"],
//                     ),
//                   ),
//                 );
//               },
//               child: Container(
//                 decoration: BoxDecoration(border: Border.all()),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Image.asset(
//                       "images/pdfIcon.png",
//                       width: 100,
//                       height: 120,
//                     ),
//                     Text(pdfData[index]["name"]),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//       // floatingActionButton: FloatingActionButton(
//       //   child: Icon(Icons.upload_file),
//       //   onPressed: pickFile,
//       //   // onPressed: (){},
//       // ),
//     );
//   }
// }
//
class PDFViewerScreen extends StatefulWidget {
  final String pdfUrl;

  const PDFViewerScreen({Key? key, required this.pdfUrl}) : super(key: key);

  @override
  State<PDFViewerScreen> createState() => _PDFViewerScreenState();
}

class _PDFViewerScreenState extends State<PDFViewerScreen> {
  PDFDocument? document;

  @override
  void initState() {
    super.initState();
    initializePdf();
  }

  void initializePdf() async {
    final pdf = await PDFDocument.fromURL(widget.pdfUrl);
    setState(() {
      document = pdf;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Viewer'),
      ),
      body: document == null
          ? Center(child: CircularProgressIndicator())
          : PDFViewer(document: document!),
    );
  }
}
