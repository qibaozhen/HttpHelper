//
//  HttpHelper.swift
//  HttpHelper
//
//  Created by Rain on 2016/11/25.
//  Copyright © 2016年 Rain. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
import SwiftyJSON

private let HttpHelperShareInstance = HttpHelper()

class HttpHelper {
    class var shared : HttpHelper {
        return HttpHelperShareInstance
    }
}

extension HttpHelper {
    
    //MARK: - POST 请求
    func postRequest(urlString : String, params : [String : Any], success : @escaping (_ response : [String : AnyObject])->(), failture : @escaping (_ error : Error)->()) {
        
        let strData = try?JSONSerialization.data(withJSONObject: params , options: .prettyPrinted)
        Alamofire.request(urlString, method: HTTPMethod.post, parameters: params).response { (response) in
            guard let error = response.error else
            {
                let jsonDict = JSON(data: strData!)
                success(jsonDict.dictionaryObject as! [String : AnyObject])
                return
            }
            failture(error)
            
        }
    }
    
}
