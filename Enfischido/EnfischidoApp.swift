//
//  EnfischidoApp.swift
//  Enfischido
//
//  Created by CEDAM05 on 02/05/23.
//

import SwiftUI
import Firebase
class AppDelegate: NSObject , UIApplicationDelegate{
    func application(_ application: UIApplication,
                       didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()

        return true
      }
}



@main
struct EnfischidoApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
