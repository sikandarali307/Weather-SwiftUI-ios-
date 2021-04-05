//
//  weatherButton.swift
//  SwiftUIDemo
//
//  Created by Sikandar Ali on 03/04/2021.
//

import Foundation
import SwiftUI
struct weatherButton: View {
    var title:String
    var textcolor:Color
    var bgcolor:Color
    var body: some View {
        Text(title)
                .frame(width: 280, height: 50)
                .font(.system(size: 20, weight: .bold, design: .default))
                .foregroundColor(textcolor)
                .background(bgcolor)
                .cornerRadius(12)
        }
    
}
