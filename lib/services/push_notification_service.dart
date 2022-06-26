// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// class PushNotificationService {
// // It is assumed that all messages contain a data field with the key 'type'
//   Future<void> setupInteractedMessage() async {
//     await Firebase.initializeApp();

//     FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
//       // Get.toNamed(NOTIFICATIOINS_ROUTE);
//       if (message.data['type'] == 'chat') {
//         // Navigator.pushNamed(context, '/chat',
//         //     arguments: ChatArguments(message));
//       }
//     });
//     await enableIOSNotifications();
//     await registerNotificationListeners();
//   }

//   registerNotificationListeners() async {
//     AndroidNotificationChannel channel = androidNotificationChannel();
//     final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//         FlutterLocalNotificationsPlugin();
//     await flutterLocalNotificationsPlugin
//         .resolvePlatformSpecificImplementation<
//             AndroidFlutterLocalNotificationsPlugin>()
//         ?.createNotificationChannel(channel);
//     var androidSettings =
//         const AndroidInitializationSettings('@mipmap/ic_launcher');
//     var iOSSettings = const IOSInitializationSettings(
//       requestSoundPermission: false,
//       requestBadgePermission: false,
//       requestAlertPermission: false,
//     );
//     var initSetttings =
//         InitializationSettings(android: androidSettings, iOS: iOSSettings);
//     flutterLocalNotificationsPlugin.initialize(initSetttings,
//         onSelectNotification: (message) async {
//       // This function handles the click in the notification when the app is in foreground
//       // Get.toNamed(NOTIFICATIOINS_ROUTE);
//     });
// // onMessage is called when the app is in foreground and a notification is received
//     FirebaseMessaging.onMessage.listen((RemoteMessage? message) {
//       // Get.find<HomeController>().getNotificationsNumber();
//       print(message);
//       RemoteNotification? notification = message!.notification;
//       AndroidNotification? android = message.notification?.android;
// // If `onMessage` is triggered with a notification, construct our own
//       // local notification to show to users using the created channel.
//       if (notification != null && android != null) {
//         flutterLocalNotificationsPlugin.show(
//           notification.hashCode,
//           notification.title,
//           notification.body,
//           NotificationDetails(
//             android: AndroidNotificationDetails(
//               channel.id,
//               channel.name,
//               channelDescription: channel.description,
//               icon: android.smallIcon,
//               playSound: true,
//             ),
//           ),
//         );
//       }
//     });
//   }

//   enableIOSNotifications() async {
//     await FirebaseMessaging.instance
//         .setForegroundNotificationPresentationOptions(
//       alert: true, // Required to display a heads up notification
//       badge: true,
//       sound: true,
//     );
//   }

//   androidNotificationChannel() => const AndroidNotificationChannel(
//         'high_importance_channel', // id
//         'High Importance Notifications', // title
//         description:
//             'This channel is used for important notifications.', // description
//         importance: Importance.max,
//       );
// }
