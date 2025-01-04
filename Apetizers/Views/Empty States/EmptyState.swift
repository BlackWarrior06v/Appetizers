//
//  EmptyState.swift
//  Apetizers
//
//  Created by Curi on 03/01/25.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack {
                Image(systemName: imageName)
                    .resizable()
                    .frame(width: 170, height: 170)
                    .foregroundColor(.brandPrimary)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y: -50.0)
        }
    }
    
}

#Preview {
    EmptyState(imageName: "basket", message: "No order to handle")
}
