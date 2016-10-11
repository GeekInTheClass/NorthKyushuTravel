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

/*
class fukuokaPref{
    var total :String
    
    init(total:String){
        self.total = total
    }
    
}

class fukTravel :fukuokaPref{
    var city :String
    var district :String
    
    init(city:String){
        self.city = city
        self.district = ""
        super.init(total:)
    }
    
}




class oitaPref{
    var total :String = ""
    
    init(total:String){
        self.total = total
    }
}

class oitaTravel :oitaPref{
    var city :String = ""
    var district :String = ""
    
    init(city:String){
        self.city = city
        self.district = ""
    }
    
}


class State {
    var total :String = ""
    var cities:[City] = []
    init(total:String){
        self.total = total
    }

}

class City {
    
}

func createDummy()->[fukuokaPref] {
    var fukPrefTravel:[fukuokaPref]=[]
    let fukuokaTotal = fukuokaPref(total: "일본 열도에서 세 번째로 큰 섬인 큐슈(九州)의 북동부에 자리잡은 후쿠오카 현은 한국에서 비행기로 갈 수 있는 가장 가까운 외국입니다.")
    fukPrefTravel += [fukuokaTotal]

    let hakata = fukTravel(city:"후쿠오카 시")
    hakata.district = "하카타 권역"
    fukPrefTravel += [hakata]

    let tenjin = fukTravel(city:"후쿠오카 시")
    tenjin.district = "텐진 권역"
    fukPrefTravel += [tenjin]

    let ohori = fukTravel(city:"후쿠오카 시")
    ohori.district = "오호리 공원 권역"
    fukPrefTravel += [ohori]

    let hakozaki = fukTravel(city:"후쿠오카 시")
    hakozaki.district = "텐진 권역"
    fukPrefTravel += [hakozaki]

    let momochi = fukTravel(city:"후쿠오카 시")
    momochi.district = "텐진 권역"
    fukPrefTravel += [momochi]

    let dazaifuShrine = fukTravel(city:"다자이후 시")
    dazaifuShrine.district = "다자이후 텐만구"
    fukPrefTravel += [dazaifuShrine]

    let kyushuMuseum = fukTravel(city:"다자이후 시")
    kyushuMuseum.district = "큐슈국립박물관"
    fukPrefTravel += [kyushuMuseum]

    let komyozenji = fukTravel(city:"다자이후 시")
    tenjin.district = "코묘젠지"
    fukPrefTravel += [komyozenji]

    
    
    
    
    
    let fukuoka = State()
    let dajayihu = City()
    
    fukuoka.cities += [dajayihu]
    
    l
    return fukPrefTravel
}

func createDummy()->[oitaPref] {
    var oitaPrefTravel:[oitaPref]=[]
    let oitaTotal = oitaPref(total: "'지옥탕'으로 유명한 벳푸別府 시, 아기자기하고 고즈넉한 온천마을로 인기가 높은 유후인由布院 등은 오이타 현의 관광수입을 책임지는 양대산맥입니다.")
    oitaPrefTravel += [oitaTotal]
    
    let beppu = oitaTravel(city:"벳푸 시")
    beppu.district = "벳푸 권역"
    oitaPrefTravel += [beppu]
    
    let yKawakita = oitaTravel(city:"유후 시")
    yKawakita.district = "유후인 카와키타"
    oitaPrefTravel += [yKawakita]
    
    let yKawakami = oitaTravel(city:"유후 시")
    yKawakami.district = "유후인 카와카미"
    oitaPrefTravel += [yKawakami]
    
    let yCentralStreet = oitaTravel(city:"유후 시")
    yCentralStreet.district = "유후인 중앙도로"
    oitaPrefTravel += [yCentralStreet]
    
    let kinrinko = oitaTravel(city:"유후 시")
    kinrinko.district = "긴린코"
    oitaPrefTravel += [kinrinko]
    
    let howToCome = oitaTravel(city:"기타")
    howToCome.district = "오이타에 오는 법"
    oitaPrefTravel += [howToCome]
    
    return oitaPrefTravel
}*/
