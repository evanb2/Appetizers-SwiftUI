//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Evan Butler on 7/9/21.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    @Published var appetizers: [Appetizer] = []
    
    func fetchAppetizers() {
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizers):
                    // because in SwiftUI updating the data will update the UI
                    // this needs to happen on the main thread
                    self.appetizers = appetizers
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}
