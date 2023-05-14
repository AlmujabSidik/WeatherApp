//
//  WelcomeView.swift
//  Weather
//
//  Created by Almujab Sidik on 14/05/23.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    
//    var changeColor: Color {
//        if preferredColorScheme(.dark) as! Bool {
//            return Color.white
//        } else {
//            return .black
//        }
//    }
    var body: some View {
        VStack {
            VStack{
                Text("Welcome to the Weather App")
                    .bold().font(.title).foregroundColor(.white)

                Text("Please share your current location to get the weather in your area")
                    .font(.body).fontWeight(.light)
                    .padding()
                    .foregroundColor(.white)
            }
            .multilineTextAlignment(.center)
            .padding()

            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
