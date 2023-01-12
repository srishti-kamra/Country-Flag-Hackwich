//
//  AnswerRow .swift
//  Country Flag Hackwich
//
//  Created by Srishti Kamra  on 1/12/23.
//

import SwiftUI

struct AnswerRow: View {
    var answer: Answer
    @State private var isSelected = false
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "circle.fill")
            font(.caption)
            Text(answer.text)
                .font(.title)
            
            if isSelected {
                Spacer()
                Image(systemName: answer.isCorrect ? "checkmark.circle.fill" : "x.circle.fill")
                    . foregroundColor(answer.isCorrect ? .green : .red)
                padding()
                frame (maxWidth:
                        . infinity, alignment: .leading)
                background(.white)
                    .cornerRadius(10)
                shadow(color: isSelected ? (answer.isCorrect ? .green : .red) : .gray, radius: 5, x: 0.5, y: 0.5)
                    .onTapGesture {
                        isSelected = true
                    }
            }
            
        }
        
    }
    struct AnswerRow__Previews: PreviewProvider {
        static var previews: some View {
            AnswerRow_(answer: Answer(text: "test", isCorrect: true))
        }
    }
}
