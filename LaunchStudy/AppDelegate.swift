//
//  AppDelegate.swift
//  LaunchStudy
//
//  Created by 長内幸太郎 on 2020/01/21.
//  Copyright © 2020 長内幸太郎. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        print("will Finish Launching")
        
        return true
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
        print("did Finish Launching")
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }


    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

extension AppDelegate {
    /// Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    func applicationWillEnterForeground(_ application: UIApplication) {
        // 前面に来た
        print("Will Enter Foreground")
    }
    
    /// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    func applicationDidBecomeActive(_ application: UIApplication) {
        print("Did Become Active")
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        // リモート通知を受け取った
        print("didReceiveRemoteNotification")
    }
}

extension AppDelegate {
    func application(application: UIApplication, continueUserActivity userActivity: NSUserActivity, restorationHandler: ([AnyObject]?) -> Void) -> Bool {
        // UnibersalLink ハンドリング
        print("UniversalLink")
        return true
    }
    
    func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
        // DeepLink ハンドリング
        // https://qiita.com/yamataku29/items/67f12142522306c3f86a
        // https://dev.classmethod.jp/smartphone/ios-custom-url-scheme/
        print("DeepLink")
        return true
    }
}

// UISceneを含むプロジェクトの場合、かつiOS13以上の場合、かなり状況が変わるので注意

// DeepLink Background->Foreground
// will Enter Foreground -> application open url sourceApplication annotation -> applicationDidBecomeActive
//

// DeepLink Launch
// ①didFinishLaunchingWithOptions -> ②Main Interface -> ③didFinishLaunchingWithOptions -> ④application open url sourceApplication annotation -> ⑤applicationDidBecomeActive
// didFinishLaunchingWithOptionsでurlはとれない



// Push Foreground
// didReceiveRemoteNotification userInfo

// Push Background->Foreground
// didReceiveRemoteNotification userInfo fetchCompletionHandler

// Push Launch
// willLaunch -> didLaunch -> didReceiveRemoteNotification
 
