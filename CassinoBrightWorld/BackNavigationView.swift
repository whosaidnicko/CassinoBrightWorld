//
//  BackNavigationView.swift
//  CassinoBrightWorld
//
//  Created by Nicolae Chivriga on 18/01/2025.
//

import SwiftUI

struct BackNavigationView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button {
            dismiss()
        } label: {
            Image("back")
        }


    }
}
