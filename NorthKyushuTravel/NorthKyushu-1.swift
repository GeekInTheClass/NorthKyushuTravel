//  Write some awesome Swift code, or import libraries like "Foundation",
//  "Dispatch", or "Glibc"

//
//  File.swift
//  NorthKyushuTravel
//
//  Created by 정보문화학 on 2016. 9. 27..
//  Copyright © 2016년 정보문화학. All rights reserved.
//

import Foundation

class Prefecture {
    var prefName :String = ""
    var cities:[City] = []
    init(prefName:String){
        self.prefName = prefName
    }

}

class City :Prefecture  {
    var cityName :String = ""
    var district :[String] = []
    init(cityName:String){
        self.cityName = cityName
    }
    
}



func createDummy()->[Prefecture] {
    var fukPrefTravel:[Prefecture]=[]
    
    let fukuoka = Prefecture(prefName: "후쿠오카 현")
    let fukuoka.fukCity = City(cityName: "후쿠오카 시")
    let fukuoka.fukCity.district = ["하카타 권역", "텐진 권역", "오호리 공원 권역", "하코자키 권역", "모모치 권역"]
    fukPrefTravel += [fukuoka]
    
    let fukuoka.dazaifuCity = City(cityName: "다자이후 시")
    let fukuoka.dazaifuCity.district = ["다자이후 텐만구", "큐슈국립박물관", "코묘젠지"]
    fukPrefTravel += [dazaifuCity]
    
    let fukuoka.kitakyushu = City(cityName: "키타큐슈 시")
    let fukuoka.kitakyushu.district = ["코쿠라", "모지코"]
    fukPrefTravel += [kitakyushu]


    var oitaPrefTravel :[Prefecture]=[]
    
    let oita = Prefecture(prefName: "오이타 현")
    let oita.beppu = City(cityName:"벳푸 시")
    let oita.beppu.district = ["벳푸 시내", "지옥온천탕"]
    oitaPrefTravel += [beppu]
    
    let oita.yufuCity = City(cityName: "유후 시")
    let oita.yufuCity.district = ["유후인초 카와카미", "유후인초 카와키타", "유후인 중앙대로", "킨린코"]
    oitaPrefTravel += [yufuCity]
    
    
    
    return fukPrefTravel
    return oitaPrefTravel
    
}
