//
//  AuthViewController.swift
//  DMSLAnalytics
//
//  Created by dmsl1805 on 10/18/2020.
//  Copyright (c) 2020 dmsl1805. All rights reserved.
//

import UIKit
import DMSLAnalytics
import RxSwift

extension DMSLAnalytics.Event.Context {
    static let freeBook: DMSLAnalytics.Event.Context = "freeBook"
    static let summary: DMSLAnalytics.Event.Context = "summary"
    static let overview: DMSLAnalytics.Event.Context = "overview"
}

extension ViewEvent {
    static var auth: ViewEvent {
        ViewEvent(context: #function)
    }
    
    static var landingIntro: ViewEvent {
        ViewEvent(context: #function)
    }
    
    static var landingAnimation: ViewEvent {
        ViewEvent(context: #function)
    }
    
    static var payment: ViewEvent {
        ViewEvent(context: #function)
    }
    
    static var paymentLanding: ViewEvent {
        ViewEvent(context: #function)
    }
    
    static var paymentInApp: ViewEvent {
        ViewEvent(context: #function)
    }
    
    static var tab1: ViewEvent {
        ViewEvent(context: #function)
    }
    
    static var tab2: ViewEvent {
        ViewEvent(context: #function)
    }
    
    static var summary: ViewEvent {
        ViewEvent(context: #function)
    }
    
    static func overview(context: DMSLAnalytics.Event.Context = .overview) -> ViewEvent {
        ViewEvent(name: DMSLAnalytics.Event.Context.overview.rawValue, context: context)
    }
}

final class AuthViewController: UIViewController {
    private let bag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindAnalytics(.auth, bag: bag)
    }
}

final class LandingIntroViewController: UIViewController {
    private let bag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindAnalytics(.landingIntro, bag: bag)
    }
}

final class LandingAnimationViewController: UIViewController {
    private let bag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindAnalytics(.landingAnimation, bag: bag)
    }
}

final class PaymentViewController: UIViewController {
    private let bag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindAnalytics(.payment, bag: bag)
        bindAnalytics(.paymentLanding, persistContext: false, bag: bag)
    }
}

final class Tab1ViewController: UIViewController {
    private let bag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindAnalytics(.tab1, bag: bag)
    }
}

final class Tab2ViewController: UIViewController {
    private let bag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindAnalytics(.tab2, bag: bag)
    }
}


final class SummaryViewController: UIViewController {
    private let bag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindAnalytics(.summary, bag: bag)
    }
    
    @IBAction func close() {
        dismiss(animated: true)
    }
}

final class OverviewFreeViewController: UIViewController {
    private let bag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindAnalytics(.overview(context: .freeBook), overrideContext: true, bag: bag)
    }
}

final class OverviewSummaryViewController: UIViewController {
    private let bag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindAnalytics(.overview(), bag: bag)
    }
}
