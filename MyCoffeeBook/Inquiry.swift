//
//  Inquiry.swift
//  MyCoffeeBook
//
//  Created by nekuro on 2021/10/10.
//

import SwiftUI

struct Inquiry: View {
    var body: some View {
        Group{
            VStack(alignment: .leading){
                Text("お問い合わせ")
                .font(.title)
                .padding()
                Text(" 不具合・ご意見ございましたらご連絡頂けますと幸いです。")
                    .padding()
                Text("1.Mail")
                Text(" 　メールはonakama.dev@gmail.com")
                Text("2.Twitter")
                Link("   Twitter(@Dev.onakama)", destination: URL(string: "https://twitter.com/DevOnakama")!)
            }
        }
        .padding(.bottom, 300)
    }
}

struct Inquiry_Previews: PreviewProvider {
    static var previews: some View {
        Inquiry()
    }
}
