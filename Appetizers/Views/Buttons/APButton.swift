//
//  APButton.swift
//  Appetizers
//
//  Created by Evan Butler on 7/13/21.
//

import SwiftUI

struct APButton: View {
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .frame(width: 250, height: 50)
            .background(Color.brandPrimary)
            .cornerRadius(8)
    }
}

struct APButton_Previews: PreviewProvider {
    static var previews: some View {
        APButton(title: "Test Appetizer")
    }
}
