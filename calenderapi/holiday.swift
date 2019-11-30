//
//  holiday.swift
//  facebookapi
//
//  Created by Akshay Devkate on 28/11/19.
//  Copyright © 2019 Akshay Devkate. All rights reserved.
//

import Foundation


struct Holidayresponce:Decodable {
    
    var responce: Holidays
}
struct Holidays:Decodable{
    var Holidays: [HolidayDetails]
}

struct HolidayDetails : Decodable  {
    
    var name:String
    var date:DateInfo
}

struct DateInfo : Decodable {
    var iso : String
}
