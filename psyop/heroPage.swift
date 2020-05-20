//
//  HeroPage.swift
//  psyop
//
//  Created by 19h on 20.05.20.
//  Copyright © 2020 19h. All rights reserved.
//

import Foundation

import Combine
import SwiftUI

struct HeroPage: View {
    @ObservedObject var substances = GraphObject<SubstanceInfoQuery>()

    @State private var substanceQuery: String = ""
    
    private func loadSubstance() {
        self.substances.load(
            graphQLQuery:
            SubstanceInfoQuery(
                query: self.substanceQuery
            )
        )
    }
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                VStack {
                    TextField("Search ...", text: $substanceQuery)
                        .padding(7)
                        .padding(.horizontal, 25)
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .font(.title)
                        .padding(.horizontal, 10)
                        .onTapGesture {
                            //self.isEditing = true
                    }
                }
                //                HStack {
                //                    if substances.value?.substances?.count == 0 {
                //                        Text("Loading...")
                //                    } else {
                //                        Text(String(substances.value?.substances?.count ?? 0))
                //                    }
                //                }.opacity(0.0)
            }
            .onReceive(substances.objectWillChange) {
                print(self.substances.value?.substances as Any)
            }
            
            Spacer()
        }
    }
}
