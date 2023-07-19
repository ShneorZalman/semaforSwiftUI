//
//  trafficLight.swift
//  semafor
//
//  Created by Zalman Zoteev on 19/07/2023.
//

import SwiftUI

struct RedLightView: View {
    let alpha: Double
    
    var body: some View {
        Circle()
            .opacity(alpha)
            .foregroundColor(.red)
            .frame(width: 150, height: 150)
    }
}
