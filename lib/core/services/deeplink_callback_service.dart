import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

class DeeplinkCallbackService {
  DeeplinkCallbackService._();

  static Future<void> notifySuccess({
    required String callbackUrl,
    required String? reference,
    required int transactionId,
  }) async {
    await _launch(callbackUrl, {
      'status': 'success',
      if (reference != null && reference.isNotEmpty) 'reference': reference,
      'transaction_id': 'TXN$transactionId',
    });
  }

  static Future<void> notifyFailed({
    required String callbackUrl,
    required String? reference,
    String? errorMessage,
  }) async {
    await _launch(callbackUrl, {
      'status': 'failed',
      if (reference != null && reference.isNotEmpty) 'reference': reference,
      if (errorMessage != null && errorMessage.isNotEmpty) 'error': errorMessage,
    });
  }

  static Future<void> notifyCancelled({
    required String callbackUrl,
    required String? reference,
  }) async {
    await _launch(callbackUrl, {
      'status': 'cancelled',
      if (reference != null && reference.isNotEmpty) 'reference': reference,
    });
  }

  static Future<void> _launch(
    String baseUrl,
    Map<String, String> params,
  ) async {
    try {
      final base = Uri.parse(baseUrl);
      final merged = {...base.queryParameters, ...params};
      final uri = base.replace(queryParameters: merged);

      debugPrint('[DeeplinkCallback] Mengirim callback: $uri');

      await launchUrl(uri, mode: LaunchMode.externalNonBrowserApplication);
      debugPrint('[DeeplinkCallback] Callback terkirim.');
    } catch (e) {
      debugPrint('[DeeplinkCallback] App merchant tidak tersedia atau URI tidak valid: $e');
    }
  }
}
