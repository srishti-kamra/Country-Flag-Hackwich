//
//  Question .swift
//  Country Flag Hackwich
//
//  Created by Srishti Kamra  on 1/11/23.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: String
    var isCorrect: Bool
}

struct Question: Identifiable {
    var id = UUID()
    var correctAnswer: Answer
    var incorrectAnswers: [Answer]
    
    
}
