//
//  LoadiVie.swift
//  CassinoBrightWorld
//
//  Created by Nicolae Chivriga on 17/01/2025.
//

import SwiftUI

struct LoadiVie: View {
    @State var animationIsGoing: Bool = false
    @State var linkMen: Bool = false
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Image("calogop")
                
                RoundedRectangle(cornerRadius: 2)
                    .fill(Color.init(hex: "#FFEF72"))
                    .overlay(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 2)
                            .fill(Color.init(hex: "#0446A7"))
                            .frame(width: 150 * (animationIsGoing ? 1 : 0) ,
                                   height: 3.75)
                            .padding(.horizontal, 5)
                    }
                    .frame(width: 163, height: 6)
            }
            .onAppear() {
                let impactMed = UIImpactFeedbackGenerator(style: .medium)
                  impactMed.impactOccurred()
                withAnimation(Animation.linear(duration: 3)) {
                    animationIsGoing = true
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    linkMen = true 
                }
            }
            
            NavigationLink("", destination: MenuView(), isActive: $linkMen)
        }
        .paddifeo()
    }
}
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
