//
//  NetworkProcessor.swift
//  ElfElf
//
//  Created by Tod Brown on 4/8/19.
//  Copyright © 2019 Tod Brown. All rights reserved.
//

import Foundation


/*class NetworkProcessor
{
    
   lazy var configuration: URLSessionConfiguration = URLSessionConfiguration.default
   lazy  var session: URLSession = URLSession(configuration: self.configuration)
    
    let url: URL
    
    init(url: URL) {
        self.url = url
    }
    
    typealias JSONDictionaryHandler = (([String : Any]?) -> Void)
    
    
    
    
   //------------------------------------------DOWNLOAD JSON FROM URL------------------------------
    func downloadJSONFromURL(_ completion: @escaping JSONDictionaryHandler)
    {
        let request = URLRequest(url: self.url)
        let dataTask = session.dataTask(with: request) { ( data, response, error ) in
            
            if error == nil {
                if let httpResponse = response as? HTTPURLResponse {
                    switch httpResponse.statusCode
                    {
                    case 200:
                        if  let data = data {
                            do {
                                let jsonDictionary = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
                                
                                completion(jsonDictionary as? [String : Any])
                            }
                            catch let error as NSError {
                                print("Error processing json data: \(error.localizedDescription)")
                            }
                        }
                        //successful response
                        
                    default:
                        print("HTTP Response Code: \(httpResponse.statusCode)")
                    }
                }
            }
            else
            {
                print("Error: \(error?.localizedDescription)")
            }
            
        }
        
    }
    
}
 /**/*/
