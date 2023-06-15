//
//  Final_Project_SwiftUI_Yan_WeiApp.swift
//  Final_Project_SwiftUI_Yan_Wei
//
//  Created by Wei Yan on 11/21/22.
//

import SwiftUI

@main
struct Final_Project_SwiftUI_Yan_WeiApp: App {
    let game = GameModel()
    var body: some Scene {
        WindowGroup {
            LaunchScreen(game: game)
        }
    }
}
