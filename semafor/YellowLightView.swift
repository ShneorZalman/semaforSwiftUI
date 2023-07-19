//
//  YellowLightView.swift
//  semafor
//
//  Created by Zalman Zoteev on 19/07/2023.
//

import SwiftUI

struct YellowLightView: View {
    let alpha: Double
    
    var body: some View {
        Circle()
            .opacity(alpha)
            .foregroundColor(.yellow)
            .frame(width: 150, height: 150)
    }
}

