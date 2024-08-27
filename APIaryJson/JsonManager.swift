//
//  JsonManager.swift
//  APIaryJson
//
//  Created by Vishakh on 22/08/24.
//

import Foundation


class JsonManager{
    
    let url = "https://private-118998-vishakh1.apiary-mock.com/Test8"
    
    func fetchData(){
        if let URL = URL(string: url){
            let session = URLSession.shared
            let task = session.dataTask(with: URL) { (data, response , error) in
                if error != nil
                {
                    print("Error")
                }
                if let safeData = data{
                    self.performJSON(safeData)
                }
            }
            task.resume()
        }
    }
    
    func performJSON(_ safeData: Data){
        
        let decode = JSONDecoder()
        do{
            let decodedData = try decode.decode([DataModel]?.self, from: safeData)
            if let decodedData = decodedData, !decodedData.isEmpty {
                for dataJson in decodedData{
                    if let question = dataJson.question {
                        print(question)
                    }
                    if let publishedAt = dataJson.publishedOn {
                        print(publishedAt)
                    }
                    if let choices = dataJson.choices{
                        for choiceData in choices{
                            //let choice = choiceData.choice
                            if let choice = choiceData.choice, let votes = choiceData.totalVotes{
                                print(choice)
                                print(votes)
                            }
                        }
                    }
                }
            }else{
                print("DataModel is empty.")
            }
        }
        catch{
            print(error)
            print("Error in decoding.")
        }
        //()
    }
    
    
}

