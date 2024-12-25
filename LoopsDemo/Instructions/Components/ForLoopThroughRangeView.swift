//
//  ForLoopThroughRangeView.swift
//  LoopsDemo
//
//  Created by Jeremy Skrdlant on 12/25/24.
//

import SwiftUI

struct ForLoopThroughRangeView: View {
	@State var index = 0
	var progress:Double{
		return Double(index)/5
	}
    var body: some View {
		VStack {
			Text("For Loop Through a Range")
				.font(.title2)
				.bold()
				.kerning(1.8)
			Text("Tap the loop to iterate through one time.")
				.foregroundStyle(.gray)
				.padding(.bottom, 20)
			ProgressView(value: progress)
				.padding(.bottom, 10)
			
			VStack{
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
					Text("0...5")
					Text("{")
						.font(.system(size: 22))
						
					Spacer()
				}
				HStack{
					Text("//index = \(index)")
						.foregroundStyle(.gray)
						.font(.system(size: 22))
					Spacer()
				}.padding(.leading)
				HStack{
					Text("progress")
						.font(.system(size: 22))
						.foregroundStyle(.variables)
					Text("=")
						.font(.system(size: 22))
					Text("index")
						.font(.system(size: 22))
						.foregroundStyle(.variables)
					Text("/")
						.font(.system(size: 22))
					Text("5")
						.font(.system(size: 22))
						.foregroundStyle(.blue)
					Spacer()
				}.padding(.leading)
				HStack{
					Text("}")
						.font(.system(size: 22))
					Spacer()
				}
			}.onTapGesture {
				index += 1
				if index > 5 {
					index = 5
				}
			}
			.background( Color.white.shadow(color:.subtleGray,  radius: 4))
			
			if index == 5 {
				Button {
					index = 0
				} label: {
					Text("Reset")
						.bold()
				}
				.buttonStyle(.borderedProminent)
				.padding(.top, 10)
			}
			
			Spacer()
			
			
		}.padding()
			.frame(height: 300)
    }
}

#Preview {
    ForLoopThroughRangeView()
}
