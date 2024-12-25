//
//  ForLoopsComponentView.swift
//  LoopsDemo
//
//  Created by Jeremy Skrdlant on 12/25/24.
//

import SwiftUI

struct ForLoopsComponentView: View {
	@State var loopCount = -1
    var body: some View {
		VStack {
			Text("For Loop Through an Array")
				.font(.title2)
				.bold()
				.kerning(1.8)
			Text("Tap the loop to iterate through one step at a time")
				.multilineTextAlignment(.center)
				.foregroundStyle(.gray)
				.padding(.bottom, 20)
			
			HStack{
				Text("let")
					.font(.system(size: 22))
					.foregroundStyle(.keywords)
				Text("emojis")
					.font(.system(size: 22))
					.foregroundStyle(.variables)
				Text("=")
					.font(.system(size: 22))
				Text("[")
					.font(.system(size: 22))
				Text("🦊")
					.font(.system(size: loopCount == 0 ? 40: 20))
					.shadow(radius: loopCount == 0 ? 10 : 0)
				
				Text(",")
				Text("🦁")
					.font(.system(size: loopCount == 1 ? 40: 20))
					.shadow(radius: loopCount == 1 ? 10 : 0)
				Text(",")
				Text("🦖")
					.font(.system(size: loopCount == 2 ? 40: 20))
					.shadow(radius: loopCount == 2 ? 10 : 0)
				Text("]")
				Spacer()
			}.frame(height: 40)
			
			HStack{
				Text("for")
					.font(.system(size: 22))
					.foregroundStyle(.keywords)
				Text("index")
					.font(.system(size: 22))
					.foregroundStyle(.variables)
				Text("in")
					.font(.system(size: 22))
					.foregroundStyle(.keywords)
				Text("emojis")
					.font(.system(size: 22))
					.foregroundStyle(.variables)
				Text("{")
					.font(.system(size: 22))
				if loopCount >= 0 {
					Text("// index = \(loopCount)")
						.foregroundStyle(.gray)
					
				}
				Text("}")
					.font(.system(size: 22))
				Spacer()
			}.onTapGesture {
				loopCount += 1
				if loopCount > 2 {
					loopCount = 2
				}
				
				
			}
			.background( Color.white.shadow(color:.subtleGray,  radius: 4))
			
			if loopCount == 2 {
				Button {
					loopCount = -1
				} label: {
					Text("Reset")
						.bold()
				}
				.buttonStyle(.borderedProminent)
				.padding(.top, 10)

			}
			Spacer()
		}.padding()
			.frame(height: 280)
    }
}

#Preview {
    ForLoopsComponentView()
}
