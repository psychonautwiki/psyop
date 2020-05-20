//
//  Network.swift
//  psyop
//
//  Created by 19h on 18.05.20.
//  Copyright © 2020 19h. All rights reserved.
//

import Apollo
import Combine
import Foundation

class Network {
    static let shared = Network()
    
    private(set) lazy var apollo = ApolloClient(
        url: URL(string: "https://api.psychonautwiki.org/")!
    )
}

final class GraphObject<A: GraphQLQuery>: ObservableObject {
    let didChange = PassthroughSubject<A.Data?, Never>()

//    var value: A.Data? {
//        willSet {
//            objectWillChange.send()
//        }
//        didSet {
//            DispatchQueue.main.async {
//                let val = self.value ?? nil

//                self.didChange.send(val)
//            }
//        }
//    }
    @Published var value: A.Data?
    
    init() {}
    
    func load(graphQLQuery: A) {
        Network.shared.apollo.fetch(query: graphQLQuery) { result in
            switch result {
                case .success(let graphQLResult):
                    self.value = graphQLResult.data
                case .failure(_):
                    self.value = nil
            }
        }
    }
}
