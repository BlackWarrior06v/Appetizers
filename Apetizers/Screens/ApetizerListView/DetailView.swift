//
//  DetailView.swift
//  Apetizers
//
//  Created by Curi on 31/12/24.
//

import SwiftUI

struct DetailView: View {
    
    let apetizer: Apetizer
    
    var body: some View {
        VStack {
            ApetizerRemoteImage(urlString: apetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 300, maxHeight: 225)
            
            VStack {
                Text(apetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(apetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing: 40) {
                    VStack(spacing: 5) {
                        Text("Calories")
                            .fontWeight(.bold)
                            .font(.caption)
                            
                        Text("\(apetizer.calories)")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    
                    VStack(spacing: 5) {
                        Text("Carbs")
                            .fontWeight(.bold)
                            .font(.caption)
                            
                        Text("\(apetizer.carbs)")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    
                    VStack(spacing: 5) {
                        Text("Protein")
                            .fontWeight(.bold)
                            .font(.caption)
                            
                        Text("\(apetizer.protein)")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    
                }
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Text("$\(apetizer.price, specifier: "%.2f") - Add To Order")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(width: 260, height: 50)
                    .foregroundColor(.white)
                    .background(.brandPrimary)
                    .cornerRadius(10)
                    
            }
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button {
            print("dismiss")
        } label: {
            ZStack {
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                    .opacity(0.6)
                
                Image(systemName: "xmark")
                    .imageScale(.small)
                    .frame(width: 44, height: 44)
                    .foregroundColor(.black)
            }
        }, alignment: .topTrailing)
    }
}

#Preview {
    DetailView(apetizer: MockData.sampleApetizer)
}
