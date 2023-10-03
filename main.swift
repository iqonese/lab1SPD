
protocol PaymentStrategy {
    func pay(amount: Double)
}


class CreditCardPaymentStrategy: PaymentStrategy {
    func pay(amount: Double) {
        print("Paid \(amount) using Credit Card.")
    }
}

class PayPalPaymentStrategy: PaymentStrategy {
    func pay(amount: Double) {
        print("Paid \(amount) using PayPal.")
    }
}

class BitcoinPaymentStrategy: PaymentStrategy {
    func pay(amount: Double) {
        print("Paid \(amount) using Bitcoin.")
    }
}

class PaymentProcessor {
    private static var sharedProcessor: PaymentProcessor?
    
    private init() {
    }
    
    static func shared() -> PaymentProcessor {
        if sharedProcessor == nil {
            sharedProcessor = PaymentProcessor()
        }
        return sharedProcessor!
    }
    
    func processPayment(amount: Double, strategy: PaymentStrategy) {
        strategy.pay(amount: amount)
    }
}

let paymentProcessor = PaymentProcessor.shared()
let creditCardStrategy = CreditCardPaymentStrategy()
let paypalStrategy = PayPalPaymentStrategy()
let bitcoinStrategy = BitcoinPaymentStrategy()

paymentProcessor.processPayment(amount: 100.0, strategy: creditCardStrategy)
paymentProcessor.processPayment(amount: 50.0, strategy: paypalStrategy)
paymentProcessor.processPayment(amount: 75.0, strategy: bitcoinStrategy)
