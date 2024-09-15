

import Foundation

// MARK: Example 2

struct JobApplicant {
    let name: String
    let email: String
    let status: Status
    
    enum Status {
        case new
        case interview
        case hired
        case rejected
    }
}

struct Email {
    let subject: String
    let messageBody: String
    let recipientEmail: String
    let senderEmail: String
}

struct EmailFactory {
    let senderEmail: String
    
    func createEmail(to recipient: JobApplicant) -> Email {
        var subject: String
        var messageBody: String
        
        switch recipient.status {
        case .new:
            subject = "We received your application"
            messageBody = "Thanks for applying for a job here."
        case .interview:
            subject = "We want to interview you"
            messageBody = "When are you available for interview?"
        case .hired:
            subject = "We want to hire you"
            messageBody = "Congrats, we want to offer you iOS developer position"
        case .rejected:
            subject = "We are so sorry"
            messageBody = "Take your chance next time"
        }
        
        return Email (
            subject: subject,
            messageBody: messageBody,
            recipientEmail: recipient.email,
            senderEmail: senderEmail
        )
    }
}

let firstCandidate = JobApplicant(
    name: "Ayan",
    email: "ayanmageramli@gmail.com",
    status: .hired
)

let factory = EmailFactory(senderEmail: "HireApplicanIntoGooglet@google.com")
factory.createEmail(to: firstCandidate)
print(factory.createEmail(to: firstCandidate))
