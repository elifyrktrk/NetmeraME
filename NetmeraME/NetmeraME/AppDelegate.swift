//
//  AppDelegate.swift
//  NetmeraME
//
//  Created by Elif Yürektürk on 18.04.2022.
//

import UIKit
import Netmera
@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        //in didFinishLaunchingWithOptions

        if #available(iOS 10.0, *) {
        UNUserNotificationCenter.current().delegate = self as? UNUserNotificationCenterDelegate
          } else {
            // Fallback on earlier versions
          }
        // Override point for customization after application launch.
        Netmera .start()
        Netmera.setAPIKey("your_api_key")
        Netmera.setLogLevel(NetmeraLogLevel.debug)
        // Call this method with needed notification types
        Netmera.requestPushNotificationAuthorization(forTypes: [.alert, .badge, .sound])
        
        // Call this method to re-enable immediate popup presentation
        Netmera.setEnabledPopupPresentation(true)
        // Set user's properties
        let user = NetmeraUser()
        user.userId = "elif0"
        user.email = ""
        user.msisdn = "00905XXXXXXXXX"
        user.name = "Johnny"
        user.surname = "Appleseed"
        user.language = NSLocale.preferredLanguages[0]
        var birthComponents = DateComponents()
        birthComponents.year = 1774
        birthComponents.month = 9
        birthComponents.day = 26
        let calendar = Calendar(identifier: .gregorian)
        user.dateOfBirth = calendar.date(from: birthComponents)
        user.gender = NetmeraProfileAttributeGender.male
        user.maritalStatus = NetmeraProfileAttributeMaritalStatus.married
        user.numberOfChildren = 10
        user.country = ""
        user.state = "MA"
        user.city = "Leominster"
        user.district = "Leominster"
        user.occupation = "Farmer"
        user.industry = "Agriculture"
        user.favouriteTeam = "FAVOURITE_TEAM"
        user.externalSegments = ["segment1", "segment2"]
        // Send data to Netmera
        Netmera.update(user)
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool
    {
        //handle URL here to navigate to custom views

        return true
    }


}

