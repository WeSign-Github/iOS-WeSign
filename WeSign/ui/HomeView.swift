//
//  HomeView.swift
//  WeSign
//
//  Created by Hafizh Sumantri on 10/08/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(alignment: .center, content: {
            HomeTopBar()
            
            Text("Your best sign language assistant")
                .font(.system(size: 45))
                .frame(maxWidth: .infinity,alignment: .leading)
            
            HomeMenu()
            
            Spacer()
        }).padding(.horizontal, 20.0)
        
    }
}

struct HomeMenu : View {
    var body: some View {
        GeometryReader { geo in
            VStack {
                HStack(alignment: .center) {
                    MenuButton(text: "Text to Sign")
                    MenuButton(text: "Start Learning")
                }.frame(height: geo.size.height * 0.5)
                MenuButton(text: "Start Analyze")
            }
        }.padding(.horizontal,10).frame(height: 350)
    }
    
}

struct MenuButton : View {
    let cornerRadius: CGFloat
    let shadowRadius: CGFloat
    let text: String
    
    
    init(cornerRadius: CGFloat = 25, shadowRadius: CGFloat = 5, text: String) {
        self.cornerRadius = cornerRadius
        self.shadowRadius = shadowRadius
        self.text = text
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: cornerRadius)
                .foregroundColor(.white)
                .shadow(radius: shadowRadius,x: 0, y: 9)
            Text(text).lineLimit(2)
        }.padding(.all,5)
        
    }
    
}

struct HomeTopBar : View {
    let circleBgColor: Color = Color.gray
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Hello, Mr Robot")
                    .font(.title3)
                Text("Hello World")
                    .font(.footnote)
            }
            Spacer()
            ZStack {
                Circle().fill(circleBgColor)
                Image("photo")
            }
        }
        .frame(height: 60)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
