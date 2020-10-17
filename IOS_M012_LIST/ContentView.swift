//
//  ContentView.swift
//  IOS_M012_LIST
//
//  Created by MVK on 24/9/2563 BE.
//

import SwiftUI

struct ContentView: View {
    @State var sNameFood = "วันนี้กินอะไรดี"
    @State var iRandom: Int = 0
    @State var iCount: Int = 0
    var body: some View {
        VStack{
            Text(self.sNameFood)
                .foregroundColor(Color.red)
                .font(.largeTitle)
                .frame(height: 300,alignment: .center)
            
            Button(action: {
                self.iCount += 1
                self.iRandom = Int.random(in: 1...10)
                let nameFoodList = ["กระเพราไก่","ข้าวผัดทะเล","ข้าวมันไก่ทอด","ข้าวขาหมู","พริกแกงหน่อไม้","ทอดหมูกระเทียมไข่ดาว","ข้าวไข่เจียว","ข้าวหมกไก่","ผัดไทย","ราดหน้าทะเล"]
                self.sNameFood = nameFoodList[self.iRandom - 1]
            }, label: {
                
                Text("สุ่มเลย")
                    .font(.title)
            })
            Text("สุ่มไปแล้ว " + String(self.iCount) + " รอบ")
                .foregroundColor(Color.black)
                .font(.headline)
                .padding()
        }.edgesIgnoringSafeArea(.all)
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
