//
//  numerologyTestsCounter.swift
//  numerologyTestsCounter
//
//  Created by Alexandr on 28.10.23.
//

import XCTest
@testable import numerology

final class numerologyTestsCounter: XCTestCase {
    
    var counter: CounterViewModel!

    override func setUpWithError() throws {
       try super.setUpWithError()
        
        counter = CounterViewModel()
    }

    override func tearDownWithError() throws {
        counter = nil
        try super.tearDownWithError()
    }

    func testExample() throws {
       
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd "
        let date = formatter.date(from: "1984/06/14")
        
//        let table = Table(
//                dopChisla: "33,6,31,4",
//                sudba: "----",
//                temperament: "----",
//                harakter: "----",
//                zdorovie: "----",
//                udacha: "----",
//                cell: "----",
//                energy: "----",
//                logic: "----",
//                dolg:"----",
//                semiya: "----",
//                interes: "----",
//                trud: "----",
//                pamyat:"----",
//                privichki: "----",
//                bit: "----"
//            )
    
//        XCTAssertEqual(counter.countTable(selectedDate: date!).dopChisla, "33,6,31,4")
//        XCTAssertEqual(counter.countTable(selectedDate: date!).harakter, "111")
//        XCTAssertEqual(counter.countTable(selectedDate: date!).zdorovie, "444")
//        XCTAssertEqual(counter.countTable(selectedDate: date!).udacha, "----")
//        XCTAssertEqual(counter.countTable(selectedDate: date!).energy, "----")
//        XCTAssertEqual(counter.countTable(selectedDate: date!).logic, "----")
//        XCTAssertEqual(counter.countTable(selectedDate: date!).dolg, "8")
//        XCTAssertEqual(counter.countTable(selectedDate: date!).interes, "333")
//        XCTAssertEqual(counter.countTable(selectedDate: date!).trud, "66")
//        XCTAssertEqual(counter.countTable(selectedDate: date!).pamyat, "9")
//        XCTAssertEqual(counter.countTable(selectedDate: date!).sudba, "6")
//        XCTAssertEqual(counter.countTable(selectedDate: date!).temperament, "3")
//        XCTAssertEqual(counter.countTable(selectedDate: date!).cell, "6")
//        XCTAssertEqual(counter.countTable(selectedDate: date!).semiya, "1")
//        XCTAssertEqual(counter.countTable(selectedDate: date!).privichki, "6")
//        XCTAssertEqual(counter.countTable(selectedDate: date!).bit, "5")
    }
}
