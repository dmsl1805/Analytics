//
//  DebugNotificationTracker.swift
//  DMSL-Analytics
//
//  Created by Dmytro Shulzhenko on 16.10.2020.
//

import Foundation
import UserNotifications

public struct DebugNotificationTracker: EventTrackingProxy {
    public init() { }
    
    public func track(application: UIApplication,
                      didFinishLaunchingWithOptions options: [UIApplication.LaunchOptionsKey : Any]?) {
        UNUserNotificationCenter.current().presentDebugNotification(#function)
    }
    
    public func trackBecomeActive() {
        UNUserNotificationCenter.current().presentDebugNotification(#function)
    }
    
    public func track(event: Event) {
        UNUserNotificationCenter.current().presentDebugNotification(event.name)
    }
    
    public func update(userProperties: [String : NSObject]) {
        
    }
    
    public func update(userId: String) {
        UNUserNotificationCenter.current().presentDebugNotification(userId)
    }
}

extension UNUserNotificationCenter {
    func presentDebugNotification(_ title: String) {
        let content = UNMutableNotificationContent()
        content.title = title
        let request = UNNotificationRequest(identifier: title, content: content, trigger: nil)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: { (error) in
            if let error = error {
                print("\("🔴") ERROR: Can't schedule a local notification for delivery, error: \(error)")
            }
        })
    }
}
