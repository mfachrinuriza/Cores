//
//  DateTime.swift
//  loan-management-app
//
//  Created by Muhammad Fachri Nuriza on 07/02/24.
//

import Foundation

public class DateTime: NSObject {
    public class func getDateStringFromDashedDateString(string: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let date = dateFormatter.date(from: string)
        
        let stringFormatter = DateFormatter()
        stringFormatter.dateFormat = "dd MMM yyyy"
        return stringFormatter.string(from: date!)
    }
}
