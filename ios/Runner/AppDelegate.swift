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
    GMSServices.provideApiKey(with: 'AIzaSyBH4vGr_8Fa-aD7mOR9HhlaAvxlEHOWKSI')
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
