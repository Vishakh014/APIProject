//
//  DataModel.swift
//  APIaryJson
//
//  Created by Vishakh on 22/08/24.
//

import Foundation


class DataModel : Decodable{
    var question : String?
    var publishedOn : String?
    var choices : [Choices]?
    
    enum CodingKeys:String, CodingKey{
        case publishedOn = "published_at"
        case question
        case choices
    }
    
}

class Choices: Decodable{
    var choice : String?
    var totalVotes : Int?
    
    enum CodingKeys:String,CodingKey{
        case choice
        case totalVotes = "votes"
    }
}
