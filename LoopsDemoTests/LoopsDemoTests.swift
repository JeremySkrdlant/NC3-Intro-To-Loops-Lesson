//
//  LoopsDemoTests.swift
//  LoopsDemoTests
//
//  Created by Jeremy Skrdlant on 12/24/24.
//

import Testing
@testable import LoopsDemo

struct LoopsDemoTests {
	
	func generateStockValue()->Int{
		return Int.random(in: 20...100)
	}

    @Test func stockChallenge() async throws {
        var moneyAmount = 60
		var buyAmount = 0
		var sellAmount = 0
		
		//Follow the instructions to buy low and sell high. Put your Code here
		
		
		#expect(buyAmount > 19, "We should have set the buyAmount when we bought the stock.")
		#expect(buyAmount < 60, "We can not buy more than what we have.")
		#expect(sellAmount > buyAmount, "We buy low and sell high")
		#expect(moneyAmount > 60, "We should have made money")
    }
	
	// We could use a filter on this but we want to work on our
	// for loops skills.
	func countAmountOfInstances(in inputArray:[Int], value:Int)->Int{
		//fill out this function using a for loop
		
		return 0
	}

	@Test func arrayItemCountChalenge()async throws {
		#expect(countAmountOfInstances(in: [1,2,3,2,3,2,2], value: 2) == 4, "There are 4 twos in this array")
		#expect(countAmountOfInstances(in: [0,1,1,1,0,0,1,1,0,1,1,1,0,1,1,1,0,1,1,0,1,0,0,1,0,1,1,0,0,1,1,0,0,1,1,1,0,1,0,0], value: 1) == 23, "There are 21 1s in the binary representation of the word swift.")
	}
}
