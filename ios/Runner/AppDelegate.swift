import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    GMSServices.provideApiKey(with: 'AIzaSyCAdLGCQ2N_opsduWuk-P-ooF256yKHqNo')
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
