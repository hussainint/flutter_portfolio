// import 'dart:typed_data';

// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class WebViewPage extends StatelessWidget {
//   String url;

//   WebViewPage({
//     required this.url,
//   });

//   @override
//   Widget build(BuildContext context) {
//     var controller;
//     controller = WebViewController()
//       ..setJavaScriptMode(JavaScriptMode.unrestricted)
//       ..setBackgroundColor(const Color(0x00000000))
//       ..setNavigationDelegate(
//         NavigationDelegate(
//           onProgress: (int progress) {
//             // Update loading bar.
//           },
//           onPageStarted: (String url) {
//             // String token =
//             //     'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJpbmNvbm4yX3NlcnZpY2UiLCJleHAiOjE2ODU2MTI3NjQsImlhdCI6MTY4MzE5MzU2NCwiaXNzIjoiaW5jb25uMl9zZXJ2aWNlIiwianRpIjoiYWIxMTE2OTctMTYxNi00Y2RjLThlNjYtYzI1NDkxMmRjNDMzIiwibmJmIjoxNjgzMTkzNTYzLCJzdWIiOiJ1c3I6MUBpbmNfYXJkIiwidHlwIjoiYWNjZXNzIn0.ot1coCaalktCzP3s8tEEWCq6lJhIy3U2eGSmOK9C6lOagNjBBvyaWEwKUTHc8LzN_iYx1jSOq_v0H98m1hCAtA';
//             // controller.evaluateJavascript(
//             //     "(function setData() { try { window.localStorage.setItem('access_token', '$token');} catch (error) { return error; }})();");
//           },
//           onPageFinished: (String url) {},
//           onWebResourceError: (WebResourceError error) {},
//           onNavigationRequest: (NavigationRequest request) {
//             if (request.url.startsWith('https://www.youtube.com/')) {
//               return NavigationDecision.prevent;
//             }
//             return NavigationDecision.navigate;
//           },
//         ),
//       )
//       ..loadRequest(
//         Uri.parse(
//           url,
//         ),
//         // body: ['asdasd', '123123'] as Uint8List,
//       );

//     return WebViewWidget(controller: controller);
//   }
// }
