import Foundation

protocol TextFormatting {
    func format(text: String) -> String
}


class PlainTextFormatter: TextFormatting {
    func format(text: String) -> String {
        return text
    }
}


class BoldTextFormatter: TextFormatting {
    private let textFormatter: TextFormatting
    
    init(_ textFormatter: TextFormatting) {
        self.textFormatter = textFormatter
    }
    
    func format(text: String) -> String {
        return "<b>\(textFormatter.format(text: text))</b>"
    }
}

class ItalicTextFormatter: TextFormatting {
    private let textFormatter: TextFormatting
    
    init(_ textFormatter: TextFormatting) {
        self.textFormatter = textFormatter
    }
    
    func format(text: String) -> String {
        return "<i>\(textFormatter.format(text: text))</i>"
        
    }
}

let text = "Hello, World!"

let plainFormatter: TextFormatting = PlainTextFormatter()
print("Plain Text: \(plainFormatter.format(text: text))")

let boldFormatter: TextFormatting = BoldTextFormatter(plainFormatter)
print("Bold Text: \(boldFormatter.format(text: text))")

let italicFormatter: TextFormatting = ItalicTextFormatter(plainFormatter)
print("Italic Text: \(italicFormatter.format(text: text))")

let boldItalicFormatter: TextFormatting = BoldTextFormatter(ItalicTextFormatter(plainFormatter))
print("Bold and Italic Text: \(boldItalicFormatter.format(text: text))")
