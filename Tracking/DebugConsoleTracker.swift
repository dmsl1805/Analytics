//
//  DebugConsoleTracker.swift
//  DMSLAnalytics
//
//  Created by Dmytro Shulzhenko on 18.10.2020.
//

import Foundation

public struct DebugConsoleTracker: EventTrackingProxy {
    public init() { }
    
    public func track(application: UIApplication,
                      didFinishLaunchingWithOptions options: [UIApplication.LaunchOptionsKey : Any]?) {
        print("📊 EVENT: \(#function)")
    }
    
    public func trackBecomeActive() {
        print("📊 EVENT: \(#function)")
    }
    
    public func track(event: Event) {
        print("📊 EVENT: \(event.name). PARAMS: \(event.params)")
    }
    
    public func update(userProperties: [String : NSObject]) {
        print("📊 USER PROPERTIES: \(userProperties)")
    }
    
    public func update(userId: String) {
        print("📊 USER ID: \(userId)")
    }
}
