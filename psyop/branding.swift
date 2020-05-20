//
//  logos.swift
//  psyop
//
//  Created by 19h on 20.05.20.
//  Copyright © 2020 19h. All rights reserved.
//

import SwiftUI

struct PWLogoImage: View {
    var body: some View {
        Image("logo-eye")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 100, height: 100)
            .grayscale(1.0)
    }
}


struct PWLogoText: View {
    var body: some View {
        HStack(spacing: 0) {
            Text("Psychonaut").font(.custom("GTSectra-Medium", size: 32))
            Text("Wiki").font(.custom("GTSectra-RegularItalic", size: 32))
        }
    }
}

struct PWLogo: View {
    var body: some View {
        VStack {
            PWLogoImage()
            
            PWLogoText()
        }
    }
}
