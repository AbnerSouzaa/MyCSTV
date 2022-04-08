//
//  MathcsAPI.swift
//  MyCSTV
//
//  Created by Abner Souza on 28/03/22.
//

//import Alamofire
//
//
//class MatchesAPI {
//    
//    fileprivate var baseUrL = ""
//    
//    let headers: HTTPHeaders = [.authorization(bearerToken: "FMDqSx0lHB-jRG9qzXohK6N6jAh4awlWR_BdkhV9202HNZgjwKg")]
//    
//    init(baseUrL: String) {
//        self.baseUrL = baseUrL
//    }
//    
//    func getMatches() {
//        AF.request(self.baseUrL, method: .get, parameters: nil, encoding: URLEncoding.default, headers: headers, interceptor: nil).response {
//            (responseData) in
//            guard let data = responseData.data else {return}
//            do {
//                let matches = try JSONDecoder().decode( [Matches].self, from: data)
//                print("name : \(matches)")
//            } catch let erro {
//                print(erro)
//            }
//        }
//    }
//}
