//
//  DetailView.swift
//  Apetizers
//
//  Created by Curi on 31/12/24.
//

import SwiftUI

struct DetailView: View {
    
    let apetizer: Apetizer
    @Binding var isShowingDetail: Bool
    
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
                    NutritionInfo(title: "Calories", value: apetizer.calories)
                    NutritionInfo(title: "Carbs", value: apetizer.carbs)
                    NutritionInfo(title: "Protein", value: apetizer.protein)
                }
            }
            
            Spacer()
            
            Button {
                
            } label: {
                APButton(title: "$\(apetizer.price, specifier: "%.2f") - Add To Order")
            }
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button {
            isShowingDetail = false
        } label: {
            XDismissButton()
        }, alignment: .topTrailing)
    }
}

struct NutritionInfo: View {
    
    let title: String
    let value: Int
    
    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .fontWeight(.bold)
                .font(.caption)
                
            Text("\(value)")
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}

#Preview {
    DetailView(apetizer: MockData.sampleApetizer, isShowingDetail: .constant(true))
}
