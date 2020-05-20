//
//  ContentView.swift
//  psyop
//
//  Created by 19h on 18.05.20.
//  Copyright © 2020 19h. All rights reserved.
//

import Combine
import SwiftUI

struct InformationDetailView: View {
    var title: String = "title"
    var subTitle: String = "subTitle"
    var imageName: String = "car"
    
    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: imageName)
                .font(.largeTitle)
                .foregroundColor(.primary)
                .padding()
                .accessibility(hidden: true)
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                    .foregroundColor(.primary)
                    .accessibility(addTraits: .isHeader)
                
                Text(subTitle)
                    .font(.body)
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
        .padding(.top)
    }
}

struct ContentView: View {
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
            
            PWLogo()
            
            Spacer()
            
            VStack(alignment: .leading) {
                InformationDetailView(title: "Match", subTitle: "Match the gradients by moving the Red, Green and Blue sliders for the left and right colors.", imageName: "slider.horizontal.below.rectangle")
                
                InformationDetailView(title: "Precise", subTitle: "More precision with the steppers to get that 100 score.", imageName: "minus.slash.plus")
                
                InformationDetailView(title: "Score", subTitle: "A detailed score and comparsion of your gradient and the target gradient.", imageName: "checkmark.square")
            }
            .padding(.horizontal)
            
            Spacer(minLength: 30)
            
            Button(action: {
                let generator = UINotificationFeedbackGenerator()
                generator.notificationOccurred(.success)
            }) {
                Text("Continue")
                    .foregroundColor(.primary)
                    .font(.headline)
                    .padding()
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                    .background(RoundedRectangle(cornerRadius: 15, style: .continuous)
                        .fill(Color.secondary))
                    .padding(.bottom)
            }
            .padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
