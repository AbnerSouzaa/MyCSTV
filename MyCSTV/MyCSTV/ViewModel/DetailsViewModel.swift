//
//  DetailsViewModel.swift
//  MyCSTV
//
//  Created by Abner Souza on 06/04/22.
//

import Foundation
import Alamofire

class DetailsViewModel {
    
    fileprivate var baseUrL = ""
    typealias returnTeams = (_ teams:[Teams]?, _ status: Bool, _ message: String) -> Void
    var teamsReturn: returnTeams?
    let headers: HTTPHeaders = [.authorization(bearerToken: "FMDqSx0lHB-jRG9qzXohK6N6jAh4awlWR_BdkhV9202HNZgjwKg")]
//    private var teams: [Teams] = []
    
    init(baseUrL: String) {
        self.baseUrL = baseUrL
    }
    
    func getTeams() {
        AF.request(self.baseUrL, method: .get, parameters: nil, encoding: URLEncoding.default, headers: headers, interceptor: nil).response {
            (responseData) in
            guard let data = responseData.data else {
                self.teamsReturn?(nil, false, "")
                return }
            
            do {
                let teams = try JSONDecoder().decode( [Teams].self, from: data)
                print("teams : \(teams)")
                self.teamsReturn?(teams, true, "")
        
            } catch let erro {
                print(erro)
                self.teamsReturn?(nil, false, erro.localizedDescription)
            }
        }
    }
    func completionHandler(teamsReturn: @escaping returnTeams){
        self.teamsReturn = teamsReturn
    }
    
    
}
