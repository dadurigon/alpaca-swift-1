import XCTest
@testable import Alpaca

class Tests: XCTestCase {

    func testOrderRequest() throws {
        
        let alpaca = Alpaca(key: Alpaca.Key(key: "", secret: ""))

        let order = OrderRequest(
            symbol: "AAPL",
            qty: 1,
            side: .buy,
            type: .limit,
            timeInForce: .day,
            limitPrice: 320,
            extendedHours: false
        )

        let placedExpectation = expectation(description: "Placed Order")
        var resultOrder: Order?
        
        alpaca.place(order: order) { result in
            switch result {
            case .success(let placedOrder):
                print(placedOrder)
                resultOrder = placedOrder
            case .failure(let error):
                print(error)
            }
            placedExpectation.fulfill()
        }
        
        wait(for: [placedExpectation], timeout: 5)
        
        XCTAssertNotNil(resultOrder)
    }
}
