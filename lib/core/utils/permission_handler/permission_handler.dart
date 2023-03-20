import 'package:permission_handler/permission_handler.dart';

// Mobile side permission should be handled by the app itself
// This class is used to handle permission
// List of permission handled by this class
// 1. Camera
// 2. Storage
// 3. Location
// 4. Microphone
// 5. Phone
// 6. SMS
// 7. Contacts
// 8. Calendar
// 9. Photos
// 10. Media Library
// 11. Reminders
// 12. Sensors
// 13. Speech
// 14. Notification
// 15. Background Location
// 16. Activity Recognition
// 17. Ignore Battery Optimization
// 18. Access Notification Policy
// 19. Access Media Location
// 20. Draw over other apps
// 21. Manage External Storage
// 22. Request Install Packages
// 23. System Alert Window
// 24. Write Settings



class PermissionHandler{
  //Singleton instance of PermissionHandler class
  static final PermissionHandler _instance = PermissionHandler._internal();

  //Singleton accessor
  static PermissionHandler get instance => _instance;

  //Private constructor
  PermissionHandler._internal();

  // 1. Camera Permission
  Future<bool> requestCameraPermission() async {
    var status = await Permission.camera.status;
    if (status.isGranted) {
      return true;
    } else {
      var result = await Permission.camera.request();
      if (result == PermissionStatus.granted) {
        return true;
      } else {
        return false;
      }
    }
  }

  // 2. Storage permission
  Future<bool> requestStoragePermission() async {
    var status = await Permission.storage.status;
    if (status.isGranted) {
      return true;
    } else {
      var result = await Permission.storage.request();
      if (result == PermissionStatus.granted) {
        return true;
      } else {
        return false;
      }
    }
  }

  // 3. Location Permission
  Future<bool> requestLocationPermission() async {
    var status = await Permission.location.status;
    if (status.isGranted) {
      return true;
    } else {
      var result = await Permission.location.request();
      if (result == PermissionStatus.granted) {
        return true;
      } else {
        return false;
      }
    }
  }

  //4. Microphone Permission
  Future<bool> requestMicrophonePermission() async {
    var status = await Permission.microphone.status;
    if (status.isGranted) {
      return true;
    } else {
      var result = await Permission.microphone.request();
      if (result == PermissionStatus.granted) {
        return true;
      } else {
        return false;
      }
    }
  }

  // 5. Phone Permission
  Future<bool> requestPhonePermission() async {
    var status = await Permission.phone.status;
    if (status.isGranted) {
      return true;
    } else {
      var result = await Permission.phone.request();
      if (result == PermissionStatus.granted) {
        return true;
      } else {
        return false;
      }
    }
  }

  // 6. SMS Permission
  Future<bool> requestSMSPermission() async {
    var status = await Permission.sms.status;
    if (status.isGranted) {
      return true;
    } else {
      var result = await Permission.sms.request();
      if (result == PermissionStatus.granted) {
        return true;
      } else {
        return false;
      }
    }
  }

  // 7. Contacts Permission
  Future<bool> requestContactsPermission() async {
    var status = await Permission.contacts.status;
    if (status.isGranted) {
      return true;
    } else {
      var result = await Permission.contacts.request();
      if (result == PermissionStatus.granted) {
        return true;
      } else {
        return false;
      }
    }
  }

  // 8. Calendar Permission
  Future<bool> requestCalendarPermission() async {
    var status = await Permission.calendar.status;
    if (status.isGranted) {
      return true;
    } else {
      var result = await Permission.calendar.request();
      if (result == PermissionStatus.granted) {
        return true;
      } else {
        return false;
      }
    }
  }

  // 9. Photos Permission
  Future<bool> requestPhotosPermission() async {
    var status = await Permission.photos.status;
    if (status.isGranted) {
      return true;
    } else {
      var result = await Permission.photos.request();
      if (result == PermissionStatus.granted) {
        return true;
      } else {
        return false;
      }
    }
  }

  // 10. Media Library Permission
  Future<bool> requestMediaLibraryPermission() async {
    var status = await Permission.mediaLibrary.status;
    if (status.isGranted) {
      return true;
    } else {
      var result = await Permission.mediaLibrary.request();
      if (result == PermissionStatus.granted) {
        return true;
      } else {
        return false;
      }
    }
  }

  // 11. Reminders Permission
  Future<bool> requestRemindersPermission() async {
    var status = await Permission.reminders.status;
    if (status.isGranted) {
      return true;
    } else {
      var result = await Permission.reminders.request();
      if (result == PermissionStatus.granted) {
        return true;
      } else {
        return false;
      }
    }
  }

  // 12. Sensors Permission
  Future<bool> requestSensorsPermission() async {
    var status = await Permission.sensors.status;
    if (status.isGranted) {
      return true;
    } else {
      var result = await Permission.sensors.request();
      if (result == PermissionStatus.granted) {
        return true;
      } else {
        return false;
      }
    }
  }

  // 13. Speech Permission
  Future<bool> requestSpeechPermission() async {
    var status = await Permission.speech.status;
    if (status.isGranted) {
      return true;
    } else {
      var result = await Permission.speech.request();
      if (result == PermissionStatus.granted) {
        return true;
      } else {
        return false;
      }
    }
  }

  // 14. Notification Permission
  Future<bool> requestNotificationPermission() async {
    var status = await Permission.notification.status;
    if (status.isGranted) {
      return true;
    } else {
      var result = await Permission.notification.request();
      if (result == PermissionStatus.granted) {
        return true;
      } else {
        return false;
      }
    }
  }

  // // 15. Background Location Permission
  // Future<bool> requestBackgroundLocationPermission() async {
  //   var status = await Permission.backgroundLocation.status;
  //   if (status.isGranted) {
  //     return true;
  //   } else {
  //     var result = await Permission.backgroundLocation.request();
  //     if (result == PermissionStatus.granted) {
  //       return true;
  //     } else {
  //       return false;
  //     }
  //   }
  // }
  //
  // 16. Access Media Location Permission
  Future<bool> requestAccessMediaLocationPermission() async {
    var status = await Permission.accessMediaLocation.status;
    if (status.isGranted) {
      return true;
    } else {
      var result = await Permission.accessMediaLocation.request();
      if (result == PermissionStatus.granted) {
        return true;
      } else {
        return false;
      }
    }
  }

  // 17. Activity Recognition Permission
  Future<bool> requestActivityRecognitionPermission() async {
    var status = await Permission.activityRecognition.status;
    if (status.isGranted) {
      return true;
    } else {
      var result = await Permission.activityRecognition.request();
      if (result == PermissionStatus.granted) {
        return true;
      } else {
        return false;
      }
    }
  }

  // // 18. Ignore Battery Optimization Permission
  // Future<bool> requestIgnoreBatteryOptimizationPermission() async {
  //   var status = await Permission.ignoreBatteryOptimization.status;
  //   if (status.isGranted) {
  //     return true;
  //   } else {
  //     var result = await Permission.ignoreBatteryOptimization.request();
  //     if (result == PermissionStatus.granted) {
  //       return true;
  //     } else {
  //       return false;
  //     }
  //   }
  // }

  // // 19. Request Installation Permission
  // Future<bool> requestInstallationPermission() async {
  //   var status = await Permission.installation.status;
  //   if (status.isGranted) {
  //     return true;
  //   } else {
  //     var result = await Permission.installation.request();
  //     if (result == PermissionStatus.granted) {
  //       return true;
  //     } else {
  //       return false;
  //     }
  //   }
  // }
  //
  // 20. Request Manage External Storage Permission
  Future<bool> requestManageExternalStoragePermission() async {
    var status = await Permission.manageExternalStorage.status;
    if (status.isGranted) {
      return true;
    } else {
      var result = await Permission.manageExternalStorage.request();
      if (result == PermissionStatus.granted) {
        return true;
      } else {
        return false;
      }
    }
  }

  // // 21. Request Notification Policy Permission
  // Future<bool> requestNotificationPolicyPermission() async {
  //   var status = await Permission.notificationPolicy.status;
  //   if (status.isGranted) {
  //     return true;
  //   } else {
  //     var result = await Permission.notificationPolicy.request();
  //     if (result == PermissionStatus.granted) {
  //       return true;
  //     } else {
  //       return false;
  //     }
  //   }
  // }
  //
  // 22 Request Request Ignore Battery Optimization Permission
  // Future<bool> requestRequestIgnoreBatteryOptimizationPermission() async {
  //   var status = await Permission.requestIgnoreBatteryOptimization.status;
  //   if (status.isGranted) {
  //     return true;
  //   } else {
  //     var result = await Permission.requestIgnoreBatteryOptimization.request();
  //     if (result == PermissionStatus.granted) {
  //       return true;
  //     } else {
  //       return false;
  //     }
  //   }
  // }

  // 23. Request Request System Alert Window Permission
  Future<bool> requestSystemAlertWindowPermission() async {
    var status = await Permission.systemAlertWindow.status;
    if (status.isGranted) {
      return true;
    } else {
      var result = await Permission.systemAlertWindow.request();
      if (result == PermissionStatus.granted) {
        return true;
      } else {
        return false;
      }
    }
  }

  // 24. Request Request System Overlay Window Permission
  // Future<bool> requestSystemOverlayWindowPermission() async {
  //   var status = await Permission.systemOverlayWindow.status;
  //   if (status.isGranted) {
  //     return true;
  //   } else {
  //     var result = await Permission.systemOverlayWindow.request();
  //     if (result == PermissionStatus.granted) {
  //       return true;
  //     } else {
  //       return false;
  //     }
  //   }
  // }

  // // 25. Request Request Write Settings Permission
  // Future<bool> requestWriteSettingsPermission() async {
  //   var status = await Permission.writeSettings.status;
  //   if (status.isGranted) {
  //     return true;
  //   } else {
  //     var result = await Permission.writeSettings.request();
  //     if (result == PermissionStatus.granted) {
  //       return true;
  //     } else {
  //       return false;
  //     }
  //   }
  // }
  //
  // 26. Request Request Access Notification Policy Permission
  Future<bool> requestAccessNotificationPolicyPermission() async {
    var status = await Permission.accessNotificationPolicy.status;
    if (status.isGranted) {
      return true;
    } else {
      var result = await Permission.accessNotificationPolicy.request();
      if (result == PermissionStatus.granted) {
        return true;
      } else {
        return false;
      }
    }
  }

  // 27. Request Request Access Background Location Permission
  // Future<bool> requestAccessBackgroundLocationPermission() async {
  //   var status = await Permission.accessBackgroundLocation.status;
  //   if (status.isGranted) {
  //     return true;
  //   } else {
  //     var result = await Permission.accessBackgroundLocation.request();
  //     if (result == PermissionStatus.granted) {
  //       return true;
  //     } else {
  //       return false;
  //     }
  //   }
  // }

  // 28. Request Request Access Activity Recognition Permission
  // Future<bool> requestAccessActivityRecognitionPermission() async {
  //   var status = await Permission.accessActivityRecognition.status;
  //   if (status.isGranted) {
  //     return true;
  //   } else {
  //     var result = await Permission.accessActivityRecognition.request();
  //     if (result == PermissionStatus.granted) {
  //       return true;
  //     } else {
  //       return false;
  //     }
  //   }
  // }

  // check if permission is denied
  Future<bool> checkPermissionStatus(Permission permission) async {
    var status = await permission.status;
    if (status.isDenied) {
      return false;
    } else {
      return true;
    }
  }


}