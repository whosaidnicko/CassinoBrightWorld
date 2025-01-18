//
//  MenuView.swift
//  CassinoBrightWorld
//
//  Created by Nicolae Chivriga on 18/01/2025.
//

import SwiftUI
import StoreKit

struct MenuView: View {
    @Environment(\.requestReview) var requestReview
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
        
            HStack  {
                Image("calogop")
                
                Spacer()
                
                VStack {
                    NavigationLink {
                        AllGamesView()
                    } label: {
                        Image("zolotoiLeibl")
                            .resizable()
                            .scaledToFit()
                            .overlay {
                                Text("PLAY")
                                    .font(.system(size: 30, weight: .bold, design: .monospaced))
                                    .foregroundColor(.black)
                            }
                    }
                    
                    Button {
                        requestReview()
                    } label: {
                        Image("zolotoiLeibl")
                            .resizable()
                            .scaledToFit()
                            .overlay {
                                Text("STARS")
                                    .font(.system(size: 30, weight: .bold, design: .monospaced))
                                    .foregroundColor(.black)
                            }
                    }

                  
                }
            }
            .padding(.horizontal)
            
        }
        .navigationBarBackButtonHidden()
    }
}
