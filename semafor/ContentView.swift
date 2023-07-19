//
//  ContentView.swift
//  semafor
//
//  Created by Zalman Zoteev on 19/07/2023.
//

import SwiftUI

enum StatusLight {
   case red, yellow, green
}

private var statusLight = StatusLight.red


struct ContentView: View {
    
    @State private var redAlpha: Double = 0.3
    @State private var yellowAlpha: Double = 0.3
    @State private var greenAlpha: Double = 0.3
    
    var body: some View {
        VStack {
            RedLightView(alpha: redAlpha).padding(.top, 20)
            YellowLightView(alpha: yellowAlpha)
            GreenLightView(alpha: greenAlpha)
            Spacer()
            Button(action: {
                changeLight()
            } ) {
                Text("Change trafic")
                    .font(.title)
            }
            
        }
    }
    
    func changeLight() {
        print(statusLight)
        switch  statusLight {
        case .red:
            redAlpha = 1
            yellowAlpha = 0.3
            greenAlpha = 0.3
            statusLight = .yellow
            
        case .yellow:
            redAlpha = 0.3
            yellowAlpha = 1
            greenAlpha = 0.3
            statusLight = .green
        case .green:
            redAlpha = 0.3
            yellowAlpha = 0.3
            greenAlpha = 1
            statusLight = .red
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
