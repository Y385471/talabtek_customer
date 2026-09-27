import 'package:firebase_messaging/firebase_messaging.dart';

/// تهيئة إشعارات Firebase (FCM): طلب الإذن وتفعيل الاستقبال.
class NotificationService {
  static Future<void> initialize() async {
    try {
      final messaging = FirebaseMessaging.instance;
      await messaging.requestPermission();
      await messaging.setAutoInitEnabled(true);
    } catch (_) {
      // لا نوقف تشغيل التطبيق إذا فشلت تهيئة الإشعارات
    }
  }
}
