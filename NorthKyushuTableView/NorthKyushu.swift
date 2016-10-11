//
//  NorthKyushu.swift
//  NorthKyushuTableView
//
//  Created by 정보문화학 on 2016. 10. 4..
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
    init(cityName:String, prefName:String){
        self.cityName = cityName
        super.init(prefName:prefName)
    }
    
}



func createDummy()->[City] {
    var fukPrefTravel:[City]=[]
    
    //let fukuoka = Prefecture(prefName: "후쿠오카 현")
    let fukCity = City(cityName: "후쿠오카 시", prefName:"후쿠오카 현")
    fukCity.district = ["하카타 권역", "텐진 권역", "오호리 공원 권역", "하코자키 권역", "모모치 권역"]
    fukPrefTravel += [fukCity]
    
    let dazaifuCity = City(cityName: "다자이후 시", prefName:"후쿠오카 현")
    dazaifuCity.district = ["다자이후 텐만구", "큐슈국립박물관", "코묘젠지"]
    fukPrefTravel += [dazaifuCity]
    
    let kitakyushu = City(cityName: "키타큐슈 시", prefName:"후쿠오카 현")
    kitakyushu.district = ["코쿠라", "모지코"]
    fukPrefTravel += [kitakyushu]
    
    
    var oitaPrefTravel :[City]=[]
    
    //let oita = Prefecture(prefName: "오이타 현")
    let beppu = City(cityName:"벳푸 시", prefName:"오이타 현")
    beppu.district = ["벳푸 시내", "지옥온천탕"]
    oitaPrefTravel += [beppu]
    
    let yufuCity = City(cityName: "유후 시", prefName:"오이타 현")
    yufuCity.district = ["유후인초 카와카미", "유후인초 카와키타", "유후인 중앙대로", "킨린코"]
    oitaPrefTravel += [yufuCity]
    
    
    
    //return fukPrefTravel
    //return oitaPrefTravel
    
    let northKyushu = fukPrefTravel + oitaPrefTravel
    return northKyushu
    
}
