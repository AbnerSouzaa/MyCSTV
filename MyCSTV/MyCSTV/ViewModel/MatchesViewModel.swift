//
//  matchesViewModel.swift
//  MyCSTV
//
//  Created by Abner Souza on 30/03/22.
//

import Alamofire

class MatchesViewModel {
    

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
                //tentativa de passar matches.date para Data
                for matches in matches{
                    let formatter = DateFormatter()
                    let stringDate = matches.date
                    formatter.dateFormat = "yyyy-MM-ddd'T'HH:mm:ssZ"
                    let date = formatter.date(from: stringDate)
                }
                self.matchesReturn?(matches, true, "")
                

        
            } catch let erro {
                print(erro)
                self.matchesReturn?(nil, false, erro.localizedDescription)
            }
        }
    }
    func completionHandler(matchesReturn: @escaping returnMatches){
        self.matchesReturn = matchesReturn
    }
    

}
