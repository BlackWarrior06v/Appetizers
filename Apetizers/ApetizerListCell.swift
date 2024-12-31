//
//  ApetizerListCell.swift
//  Apetizers
//
//  Created by Curi on 31/12/24.
//

import SwiftUI

struct ApetizerListCell: View {
    
    let apetizer: Apetizer
    
    var body: some View {
        HStack {
            Image(apetizer.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(apetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(apetizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    ApetizerListCell(apetizer: MockData.sampleApetizer)
}
