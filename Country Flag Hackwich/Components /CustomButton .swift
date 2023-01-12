//
//  CustomButton .swift
//  Country Flag Hackwich
//
//  Created by Srishti Kamra  on 1/11/23.
//

import SwiftUI

struct CustomButton: View {
    var text: String
    var background: Color = .yellow
    
    var body: some View {
        Text(text)
            .foregroundColor(.cyan)
            .padding()
            .padding(.horizontal)
            .background(background)
            .cornerRadius(25)
            .shadow(radius: 10)
    }
}

struct CustomButton__Previews: PreviewProvider {
    static var previews: some View {
        CustomButton_(text: "Next")
    }
}
