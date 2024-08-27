//
//  data.swift
//  APIaryJson
//
//  Created by Vishakh on 23/08/24.
//

import Foundation

struct EncodingData :Encodable{
    var name: String
    var id : String
    var profession: String
    var age : Int
    var company: [CompanyProfile]
    
    
    
}

struct CompanyProfile:Encodable{
    var cmpy_name: String
    var location: String
    
}
