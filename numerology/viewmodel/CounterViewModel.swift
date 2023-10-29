//
//  counterViewModel.swift
//  numerology
//
//  Created by Alexandr on 27.10.23.
//

import Foundation


class CounterViewModel: ObservableObject {
    
    @Published var table: Table
    @Published var selectedDate: Date
    
    
    init(){
        self.table =
        Table(
          dopChisla: "----",
          sudba: "----",
          temperament: "----",
          harakter: "----",
          zdorovie: "----",
          udacha: "----",
          cell: "----",
          energy: "----",
          logic: "----",
          dolg: "----",
          semiya:  "----",
          interes: "----",
          trud: "----",
          pamyat: "----",
          privichki: "----",
          bit: "----"
        )
        self.selectedDate = Date()
        
    }

    
    func countTable(selectedDate: Date) {
        
        var dopChislo: String
        
        let formatter3 = DateFormatter()
        formatter3.dateFormat = "dd/MM/yyyy"
        let selectedDateString =  formatter3.string(from: selectedDate)

        let splitDate : [String] = selectedDateString.components(separatedBy: "/")
        
        let daySum = splitDate[0].compactMap{ $0.wholeNumberValue }.compactMap(Int.init).reduce(0, +)
        let monthSum = splitDate[1].compactMap{ $0.wholeNumberValue }.compactMap(Int.init).reduce(0, +)
        let yearsSum = splitDate[2].compactMap{ $0.wholeNumberValue }.compactMap(Int.init).reduce(0, +)
        
        
        let firstNumberOfDay = splitDate[0].compactMap{ $0.wholeNumberValue }.compactMap(Int.init)[0]
        
        let firstDopChislo = daySum + monthSum + yearsSum
        
        
        var secondDopChislo: Int
//        if (String(firstDopChislo).count == 1 ) {
//            secondDopChislo = firstDopChislo
//        } else {
            secondDopChislo = String(firstDopChislo).compactMap{ $0.wholeNumberValue }.compactMap(Int.init).reduce(0, +)
//        }
        
        let thirdDopChislo = abs(firstDopChislo - (2 * firstNumberOfDay))
        
        var fourthDopChislo: Int
//        if (String(thirdDopChislo).count == 1) {
//            fourthDopChislo = thirdDopChislo
//        } else {
            fourthDopChislo = String(thirdDopChislo).compactMap{ $0.wholeNumberValue }.compactMap(Int.init).reduce(0,+)
      //  }
        
    
        let longString = splitDate[0] + splitDate[1] + splitDate[2] + String(firstDopChislo) + String(secondDopChislo) + String(thirdDopChislo) + String(fourthDopChislo)
        
        //array separate all digest
        let arrayByNumber = longString.compactMap{ $0.wholeNumberValue }
        
        
        var one = ""
        var two = ""
        var three = ""
        var four = ""
        var five = ""
        var six = ""
        var seven = ""
        var eight = ""
        var nine = ""
        
        for number in arrayByNumber {
            switch number {
            case 1:
                one += "1"
            case 2:
                two += "2"
            case 3:
                three += "3"
            case 4:
                four += "4"
            case 5:
                five += "5"
            case 6:
                six += "6"
            case 7:
                seven += "7"
            case 8:
                eight += "8"
            case 9:
                nine += "9"
            default:
                print("Number not found in array by number" + String(number))
            }
        }
        
        let temperamentCount: String = String((three + five + seven).count)
        let bitCount: String = String((four + five + six).count)
        let cellCount: String = String((one + four + seven).count)
        let semiyaCount: String = String((two + five + eight).count)
        let privichkiCount: String = String((three + six + nine).count)
        
        var sudba = secondDopChislo
        
        if (sudba != 11) {
            while (String(sudba).count > 1) {
                sudba = String(sudba).compactMap{ $0.wholeNumberValue }.compactMap(Int.init).reduce(0, +)
                    if (sudba == 11) {
                        break
                    }
                }
            }
        
        dopChislo = String(firstDopChislo) + "," + String(secondDopChislo) + "," + String(thirdDopChislo) + "," + String(fourthDopChislo)
        
        self.table = Table(
            dopChisla: dopChislo,
            sudba: String(sudba),
            temperament: temperamentCount == "" ? "----" : temperamentCount,
            harakter: one == "" ? "----" : one,
            zdorovie: four == "" ? "----" : four,
            udacha: seven == "" ? "----" : seven,
            cell: cellCount == "" ? "----" : cellCount,
            energy: two == "" ? "----" : two,
            logic: five == "" ? "----" : five,
            dolg: eight == "" ? "----" : eight,
            semiya:  semiyaCount == "" ? "----" : semiyaCount,
            interes: three == "" ? "----" : three,
            trud: six == "" ?  "----" : six,
            pamyat: nine == "" ? "----" : nine, 
            privichki: privichkiCount == "" ? "----" : privichkiCount,
            bit: bitCount == "" ? "----" : bitCount
        )
    }
}


//Table(
//    dopChisla: dopChislo,
//    sudba: "----",
//    temperament: "----",
//    harakter: "----",
//    zdorovie: "----",
//    udacha: "----",
//    cell: "----",
//    energy: "----",
//    logic: "----",
//    dolg:"----",
//    semiya: "----",
//    interes: "----",
//    trud: "----",
//    pamyat:"----",
//    privichki: "----",
//    bit: "----"
//)
