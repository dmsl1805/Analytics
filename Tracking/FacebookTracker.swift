//
//  FacebookTracker.swift
//  DMSL-Analytics
//
//  Created by Dmytro Shulzhenko on 15.10.2020.
//

import UIKit
import FBSDKCoreKit

public struct FacebookTracker: EventTrackingProxy {
    public init() { }
    
    public func track(application: UIApplication,
                      didFinishLaunchingWithOptions options: [UIApplication.LaunchOptionsKey: Any]?) {
        ApplicationDelegate.shared.application(application,
                                               didFinishLaunchingWithOptions: options)
    }
    
    public func trackBecomeActive() { }
    
    public func track(event: Event) {
        AppEvents.logEvent(AppEvents.Name(event.name), parameters: event.params)
    }
    
    public func update(userProperties: [String : NSObject]) { }
    
    public func update(userId: String) {
        AppEvents.userID = userId
    }
}
