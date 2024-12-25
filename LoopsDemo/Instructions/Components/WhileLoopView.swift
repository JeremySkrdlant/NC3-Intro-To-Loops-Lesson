//
//  WhileLoopView.swift
//  LoopsDemo
//
// Dice (https://creazilla.com/media/clipart/7771011/dice-toy)
// Public Domain

import SwiftUI

struct WhileLoopView: View {
	@State var roll = 1
	var rollImage:String {
		return "Roll\(roll)"
	}
	
    var body: some View {
		VStack {
			Text("While Loop")
				.font(.title2)
				.bold()
				.kerning(1.8)
			Text("The loop will continue until you roll a 6.  Tap on the while loop until we break out of the loop.")
				.multilineTextAlignment(.center)
				.foregroundStyle(.gray)
				.padding(.bottom, 20)
			
			Image(rollImage)
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: 150, height: 180)
				.shadow(color:.blue, radius: roll == 6 ? 15: 0)
			
			VStack{
				HStack{
					Text("var")
						.font(.system(size: 22))
						.foregroundStyle(.keywords)
					Text("currentRoll")
						.font(.system(size: 22))
						.foregroundStyle(.variables)
					Text("=")
						.font(.system(size: 22))
					Text("\(roll)")
						.font(.system(size: 22))
						.foregroundStyle(.blue)
					Spacer()
				}.padding(.bottom, 6)
				VStack{
					HStack{
						Text("while")
							.font(.system(size: 22))
							.foregroundStyle(.keywords)
						Text("currentRoll")
							.font(.system(size: 22))
							.foregroundStyle(.variables)
						Text("!=")
							.font(.system(size: 22))
						Text("6")
							.font(.system(size: 22))
							.foregroundStyle(.blue)
						Text("{")
							.font(.system(size: 22))
						Spacer()
					}
					
					HStack(spacing:0){
						Text("currentRoll")
							.font(.system(size: 22))
							.foregroundStyle(.variables)
						Text(" = ")
							.font(.system(size: 22))
						Text("Int")
							.font(.system(size: 22))
							.foregroundStyle(.purple)
						Text(".")
							.font(.system(size: 22))
						Text("random")
							.font(.system(size: 22))
							.foregroundStyle(.keywords)
						Text("(")
							.font(.system(size: 22))
						Text("in")
							.font(.system(size: 22))
							.foregroundStyle(.keywords)
						Text(": ")
							.font(.system(size: 22))
						Text("1")
							.font(.system(size: 22))
							.foregroundStyle(.blue)
						Text("...")
							.font(.system(size: 22))
						Text("6")
							.font(.system(size: 22))
							.foregroundStyle(.blue)
						Text(")")
							.font(.system(size: 22))
						Spacer()
					}.padding(.leading, 10)
					
					HStack{
						Text("}")
							.font(.system(size: 22))
						Spacer()
					}
				}
				.onTapGesture {
					if roll != 6 {
						roll = Int.random(in: 1...6)
					}
				}
				.padding(3)
				.background(Color.white
				.shadow(color: .subtleGray, radius: 4 )
				)
			}
			
			if roll == 6 {
				Button {
					roll = 1
				} label: {
					Text("Loop Done - Reset")
						.bold()
				}
				.buttonStyle(.borderedProminent)
				.padding(.top, 10)
			}
			Spacer()
			
		}.padding()
			.frame(height:520)
		
    }
}

#Preview {
    WhileLoopView()
}
