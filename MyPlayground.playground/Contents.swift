//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//No. 1

let params = [3, 5, 7, 11, 13, 17, 19]

var paramsSum :Int = 0
var printedParamsSum :[Int] = []

for paramEach in params{
    paramsSum += paramEach
    printedParamsSum += [paramsSum]
}
print (printedParamsSum)

var i = 0
params.map{
    i += $0
    print(i)
}



//No. 2

let params2 = [25000, 30000, 35000, 45000, 70000]

var paramsSum2 :Int = 0
var printedParamsSum2 :[Int] = []
var finalElectricFee :[Int] = []

for paramEach in params2{
    paramsSum2 += paramEach
    printedParamsSum2 += [paramsSum2]
}
for sumEach in printedParamsSum2{
    if sumEach > 40000 {
        finalElectricFee += [sumEach * 5]
    } else if sumEach > 20000 {
        finalElectricFee += [sumEach * 3]
    } else {
        finalElectricFee += [sumEach]
    }
}

var result: [Int] = []

var i2 = 0
   params.map{
    i2 += $0
    
    print(i2)
    result += [i2]
}

var b = result.filter{
    $0 > 500
}


print (finalElectricFee)



//No.3

let params3 = ["holmes", "WATSON", "hudson", "lestrade", "MYCROFT"]
var conanDoyle :[String] = []


for characters in params3 {
    if characters == characters.lowercased() {
        conanDoyle += [characters.uppercased()]
    } else {
        conanDoyle += [characters.lowercased()]
    }
}

var conanDoyle2 :[String] = []
let asdfjioa = params3.map{
    if ($0 == $0.lowercased()) {
        $0.uppercased()
        conanDoyle2 += [$0.uppercased()]
    } else {
        $0.lowercased()
        conanDoyle2 += [$0.lowercased()]
    }
}
print(conanDoyle2)





//No.4

let inString:Array<String> = ["Yesterday all my troubles seemed so far away.", "Suddenly I'm not half the man I used to be.", "I said something wrong, now I long for yesterday."]
let searchWord:Array<String> = ["away", "you", "I"]
var result2:[String:Array<String>] = [:]

for word in searchWord {
    var stringIntermediate :[String] = []
    for strings in inString {
        if strings.range(of: word) != nil {
            stringIntermediate += [strings]
        }
    }
    result2[word] = stringIntermediate
}

print (result2)







//No.5
let metroPop = ["Seoul":9964291, "Busan":3505821, "Incheon":2940436, "Daegu":2485692, "Daejeon":1516241, "Gwangju":1472432, "Ulsan":1172965, "Sejong":236134]
var filteredMetroPop :[(String, Int)] = []

for (metroEach, popEach) in metroPop {
    if popEach % 2 == 0 && popEach > 1500000 {
        filteredMetroPop += [(metroEach, popEach)]
    }
    
}
print (filteredMetroPop)

var valuesArray = metroPop.values.map{
    if ($0 % 2 == 0 && $0 > 150000) {
        $0
    }
}

valuesArray.map{
    metroPop.keys.map
}
