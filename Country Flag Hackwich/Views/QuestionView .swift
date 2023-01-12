//
//  QuestionView .swift
//  Country Flag Hackwich
//
//  Created by Srishti Kamra  on 1/12/23.
//

import SwiftUI

struct QuestionView: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Text ("County Flag Quiz")
                foregroundColor(.yellow)
                    .font(.title)
                fontWeight(.heavy)
                Spacer()
                Text("1 out of 3")
                foregroundColor(.yellow)
                    .fontWeight(.heavy)
            }
            ProgressBar(progress: 50)
            VStack(spacing: 20) {
            Text ("Which country's flag is this?")
            font(.title)
            Image ("Italy")
            .resizable()
            frame (width: 300, height: 200)
            AnswerRow(answer: Answer (text: "France", isCorrect: false))
            AnswerRow(answer: Answer (text: "Germany", isCorrect: false))
            AnswerRow(answer: Answer (text: "Italy", isCorrect: true))
            AnswerRow(answer: Answer(text: "England", isCorrect: false))
            }
            CustomButton(text: "Next")
            Spacer()
        }
        padding()
        frame (width: .infinity, height: .infinity)
            .background(.cyan)
    }
    
}

struct QuestionViewPreviews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
