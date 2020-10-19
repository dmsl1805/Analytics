//
//  AppsflyerTracker.swift
//  DMSL-Analytics
//
//  Created by Dmytro Shulzhenko on 15.10.2020.
//

import Foundation
import AppsFlyerLib

public struct AppsflyerTracker: EventTrackingProxy {
    public init(appleAppID: String, appsFlyerDevKey: String) {
        AppsFlyerLib.shared().appleAppID = appleAppID
        AppsFlyerLib.shared().appsFlyerDevKey = appsFlyerDevKey
    }
    
    public func track(application: UIApplication,
                      didFinishLaunchingWithOptions options: [UIApplication.LaunchOptionsKey : Any]?) { }
    
    public func trackBecomeActive() {
        AppsFlyerLib.shared().start()
    }
    
    public func track(event: Event) {
        AppsFlyerLib.shared().logEvent(event.name, withValues: event.params)
    }
    
    public func update(userProperties: [String: NSObject]) {
        AppsFlyerLib.shared().customData = userProperties
    }
    
    public func update(userId: String) {
        AppsFlyerLib.shared().customerUserID = userId
    }
}
