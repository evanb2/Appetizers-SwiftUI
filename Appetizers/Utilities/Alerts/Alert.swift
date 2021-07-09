//
//  Alert.swift
//  Appetizers
//
//  Created by Evan Butler on 7/9/21.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissbutton: Alert.Button
}

struct AlertContext {
    static let invalidData = AlertItem(
        title: Text("Server Error"),
        message: Text("The data received from the server was invalid. Please contact support."),
        dismissbutton: .default(Text("OK"))
    )
    static let invalidResponse = AlertItem(
        title: Text("Server Error"),
        message: Text("Invalid response from the server. Please try again later or contact support."),
        dismissbutton: .default(Text("OK"))
    )
    static let invalidURL = AlertItem(
        title: Text("Server Error"),
        message: Text("There was an issue connecting to the server. If this persists, please contact support."),
        dismissbutton: .default(Text("OK"))
    )
    static let unableToComplete = AlertItem(
        title: Text("Server Error"),
        message: Text("Unable to complete your request at this time. Please check your internet connection."),
        dismissbutton: .default(Text("OK"))
    )
}
