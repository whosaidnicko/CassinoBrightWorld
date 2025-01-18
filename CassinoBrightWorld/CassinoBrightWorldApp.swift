//
//  CassinoBrightWorldApp.swift
//  CassinoBrightWorld
//
//  Created by Nicolae Chivriga on 17/01/2025.
//

import SwiftUI

@main
struct CassinoBrightWorldApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            NavigationView {
                LoadiVie()
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}


class AppDelegate: NSObject, UIApplicationDelegate {
    static var landscapeOrien = UIInterfaceOrientationMask.landscape {
        didSet {
            if #available(iOS 16.0, *) {
                UIApplication.shared.connectedScenes.forEach { scene in
                    if let windowScene = scene as? UIWindowScene {
                        windowScene.requestGeometryUpdate(.iOS(interfaceOrientations: landscapeOrien))
                    }
                }
                UIViewController.attemptRotationToDeviceOrientation()
            } else {
                if landscapeOrien == .landscape {
                    UIDevice.current.setValue(UIInterfaceOrientation.landscapeRight.rawValue, forKey: "orientation")
                } else {
                    UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")
                }
            }
        }
    }
    
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return AppDelegate.landscapeOrien
    }
}
