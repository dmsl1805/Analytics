//
//  AppDelegate.swift
//  DMSLAnalytics
//
//  Created by dmsl1805 on 10/18/2020.
//  Copyright (c) 2020 dmsl1805. All rights reserved.
//

import UIKit
import DMSLAnalytics

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        EventTracker.default.setTrackers(
//            AmplitudeTracker(apiKey: ""),
//            AppsflyerTracker(appleAppID: "", appsFlyerDevKey: ""),
//            FacebookTracker(),
//            FirebaseTracker(),
//            DebugNotificationTracker(),
            DebugConsoleTracker()
        )
        
        return true
    }
}

