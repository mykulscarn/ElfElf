//
//  AppDelegate.swift
//  ElfElf
//
//  Created by Tod Brown on 4/4/19.
//  Copyright © 2019 Tod Brown. All rights reserved.
//

import UIKit
import Firebase



@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?




    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        FirebaseApp.configure()
        
       // let url = URL(string: "https://api.mysportsfeeds.com/v2.1/pull/nba/2018-2019-regular/player_stats_totals.json")
        //
        
        
        
      //  let networkProcessor = NetworkProcessor(url: <#T##URL#>)
        
      //  networkProcessor.downloadJSONFromURL { (jsonDictionary) in
            
 //           print(jsonDictionary)
        
        let username = "1a9ad43d-f010-4f84-b24a-bdb39f"
        let password = "MYSPORTSFEEDS"
        let loginString = String(format: "%@:%@", username, password)
        let loginData = loginString.data(using: String.Encoding.utf8)!
        let base64LoginString = loginData.base64EncodedString()
        
        //let  url = URL(string: "https://api.mysportsfeeds.com/v2.1/pull/nba/2018-2019-regular/player_stats_totals.json")
        
        // give this to URLSession object
        

        
        /*
        
        NSURLConnection.sendAsynchronousRequest(request, queue: OperationQueue.main, completionHandler:  {(response: URLResponse?, data: Data?, error: Error?) -> Void in
            
            do {
                if let data = data {//jsonResult = try JSONSerialization.jsonObject(with: data!, options: []) as? NSDictionary {
                    print("Hooray")
                    print("\(data)")
                }
            } catch let error as NSError {
                print("xxxxx")
                print(error.localizedDescription)
            }
        }) */
        
        let urlString = "https://api.mysportsfeeds.com/v2.1/pull/nba/2018-2019-regular/player_stats_totals.json"

        print("urlString: \(urlString)")
        
        let url = URL(string: urlString)
        
        var request = URLRequest(url: url!)
        request.httpMethod = "POST"
        request.setValue("Basic \(base64LoginString)", forHTTPHeaderField: "Authorization")
        request.timeoutInterval = 600
        
        print("----")
        print(request)
        print(request.value(forHTTPHeaderField: "Authorization") ?? "")
        
        let task = URLSession.shared.dataTask(with: request, completionHandler: {(data, response, error) in
            
            print("lockout.response: \(String(describing: response))")
            print("lockout.data: \(String(describing: data?.description))")
            
            let data = data
            
            do {
                print("****")
                print(data)
                print("****")
            }
        })
        
        task.resume()

        print("moooo")
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

