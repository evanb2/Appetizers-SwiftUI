//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Evan Butler on 7/9/21.
//

import SwiftUI

struct AppetizerListCell: View {
    var appetizer: Appetizer!
    
    var body: some View {
        HStack(spacing: 20) {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
        }
    }
}

struct AppetizerListCell_Previews: PreviewProvider {
    static var previews: some View {
        List {
            AppetizerListCell(appetizer: MockData.sampleAppetizer)
        }
    }
}
