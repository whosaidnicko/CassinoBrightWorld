//
//  ActingGameView.swift
//  CassinoBrightWorld
//
//  Created by Nicolae Chivriga on 18/01/2025.
//

import SwiftUI
import Lottie

struct ActingGameView: View {
    @State var typeSelected: GameType 
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                LottieView(animation: .named("ballisRunning"))
                    .playing(loopMode: .loop)
                    .resizable()
                    .frame(width: 70, height: 80)
                
                HStack {
                    Text("Loading")
                        .font(.system(size: 20, weight: .bold, design: .monospaced))
                        .foregroundStyle(.white)
                    DotsView()
                        .offset(y: 5)
                }
            }
            
            WKWebViewRepresentable(url: URL(string: typeSelected.silocika)!, onLoadCompletion: {
                
                
            }, iszaglushka: true)
            .cornerRadius(20)
            .onAppear() {
                
            }
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: BackNavigationView())
    }
}

import SwiftUI

struct DotsView: View {
    @State private var currentDot = 0
    private let totalDots = 3
    private let animationDuration = 0.5
    
    var body: some View {
        HStack(spacing: 5) {
            ForEach(0..<totalDots, id: \.self) { index in
                Circle()
                    .frame(width: 10, height: 10)
                    .foregroundColor(currentDot == index ? .blue : .white)
                    .opacity(currentDot == index ? 1.0 : 0.5)
            }
        }
        .onAppear {
            startLoadingAnimation()
        }
    }
    
    private func startLoadingAnimation() {
        Timer.scheduledTimer(withTimeInterval: animationDuration, repeats: true) { timer in
            withAnimation(.easeInOut(duration: animationDuration)) {
                currentDot = (currentDot + 1) % totalDots
            }
        }
    }
}
