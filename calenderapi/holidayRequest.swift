//
//  HolidayRequest.swift
//  facebookapi
//
//  Created by Akshay Devkate on 29/11/19.
//  Copyright © 2019 Akshay Devkate. All rights reserved.
//

import Foundation

enum HolidayError: Error{
    case NoDataAvailable
    case canNotProcessData
    
}


struct HolidayRequest {
    let resourseURL :URL
    let API_KEY = "2532646de05df3ba30eabd92d8e1a884e746094a"
    
    init(CountryCode:String){
        
        let date = Date()
        let format = DateFormatter()
        format.dateFormat = "yyyy"
        let currentYear = format.string(from: date)
        
        
        let resourceString = "https://calendarific.com/api/v2/holidays?\(API_KEY)&country=\(CountryCode)&year=\(currentYear)"
        guard let resourseURL = URL(string: resourceString)else{fatalError()}
        self.resourseURL = resourseURL
    }
    func getHolidays (completion: @escaping(Result<[HolidayDetails],HolidayError>)-> Void){
        let dataTask = URLSession.shared.dataTask(with: resourseURL){ data, _, _ in
            guard let jsonData = data else{
                completion(.failure(.NoDataAvailable))
                return
            }
        }
        dataTask.resume()
    }
    
}
