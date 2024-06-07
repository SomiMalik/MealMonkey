//
//  LandingPageView.swift
//  MealMonkey
//
//  Created by Usama Khalid on 06/06/2024.
//

import SwiftUI

struct LandingPageView: View {
    var body: some View {
        GeometryReader(content: { geometry in
            VStack(spacing: geometry.size.height * 0.045) {
                ZStack(alignment: .bottom, content: {
                    Image("landing.top.image", bundle: nil)
                        .resizable()
                        .frame(width: geometry.size.width, height: geometry.size.height * 0.45)
                        .aspectRatio(contentMode: .fill)
                        .shadow(radius: 5, y: 3)
                    Image("logo")
                        .resizable()
                        .alignmentGuide(.bottom, computeValue: { dimension in
                            dimension[VerticalAlignment.center] - geometry.size.height * 0.028
                        })
                        .frame(width: geometry.size.width * 0.6, height: geometry.size.height * 0.25)
                        .aspectRatio(contentMode: .fit)
                })
                Text("Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep")
                    .font(.system(size: 13))
                    .multilineTextAlignment(.center)
                    .foregroundStyle(Color(.discoverText))
                    .frame(width: geometry.size.width * 0.7)
                VStack(spacing: geometry.size.height * 0.025) {
                    Button(action:  {
                        print("login pressed")
                    }, label: {
                        Text("Login")
                            .foregroundStyle(.white)
                    })
                    .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 0.07)
                    .background(Color.orange)
                    .clipShape(.capsule)
                    
                    Button(action:  {
                        print("login pressed")
                    }, label: {
                        Text("Create an Account")
                            .foregroundStyle(.orange)
                    })
                    .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 0.07)
                    .border(.orange, width: 1, cornerRadius: geometry.size.height * 0.5)
                }
            }
        })
        .ignoresSafeArea()
    }
}

#Preview {
    LandingPageView()
}

extension View {
    func border(_ color: Color, width: CGFloat, cornerRadius: CGFloat) -> some View {
        overlay(RoundedRectangle(cornerRadius: cornerRadius).stroke(color, lineWidth: width))
    }
}
