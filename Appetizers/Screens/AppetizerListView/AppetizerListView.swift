//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Evan Butler on 7/8/21.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject var viewModel = AppetizerListViewModel()
    @State private var isShowingDetailView = false
    @State private var selectedAppetizer: Appetizer?
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            selectedAppetizer = appetizer
                            isShowingDetailView = true
                        }
                }
                .navigationTitle("🍟 Appetizers")
                .disabled(isShowingDetailView)
            }
            .onAppear {
                viewModel.fetchAppetizers()
            }
            .blur(radius: isShowingDetailView ? 20 : 0)
            
            if isShowingDetailView {
                AppetizerDetailView(appetizer: selectedAppetizer, isShowingDetailView: $isShowingDetailView)
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(
                title: alertItem.title,
                message: alertItem.message,
                dismissButton: alertItem.dismissbutton
            )
        }
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
