//
//  DefaultMatchesViewModel.swift
//  MyCSTV
//
//  Created by Abner Souza on 04/04/22.
//

import Alamofire

class DefaultMatchesViewModel: MatchesViewModel {
    
    fileprivate var baseUrL = ""
    typealias returnMatches = (_ matches:[Matches]?, _ status: Bool, _ message: String) -> Void
    var matchesReturn: returnMatches?
    let headers: HTTPHeaders = [.authorization(bearerToken: "FMDqSx0lHB-jRG9qzXohK6N6jAh4awlWR_BdkhV9202HNZgjwKg")]
    
    init(baseUrL: String) {
        self.baseUrL = baseUrL
    }
    
    func getMatches() {
        AF.request(self.baseUrL, method: .get, parameters: nil, encoding: URLEncoding.default, headers: headers, interceptor: nil).response {
            (responseData) in
            guard let data = responseData.data else {
                self.matchesReturn?(nil, false, "")
                return }
            
            do {
                let matches = try JSONDecoder().decode( [Matches].self, from: data)
                print("name : \(matches)")
                self.matchesReturn?(matches, true, "")
            } catch let erro {
                print(erro)
                self.matchesReturn?(nil, false,erro.localizedDescription)
            
            }
        }
    }
    func completionHandler(matchesReturn: @escaping returnMatches){
        self.matchesReturn = matchesReturn
    }
}

