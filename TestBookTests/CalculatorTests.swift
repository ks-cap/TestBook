//
//  CalculatorTests.swift
//  TestBookTests
//
//  Created by 佐藤 賢 on 2019/08/12.
//  Copyright © 2019 佐藤 賢. All rights reserved.
//

import Nimble
import Quick
@testable import TestBook

class CalculatorTests: QuickSpec {
    override func spec() {
        describe("Calculator") {
            var calculator: Calculator!
            
            beforeEach {
                calculator = Calculator()
            }
            
            describe("add") {
                it("1 + 2 = 3") {
                    expect(calculator.add(1, 2)).to(equal(3))
                }
            }
            
            describe("subtract") {
                it("3 - 1 = 2") {
                    expect(calculator.subtract(3, 1)).to(equal(2))
                }
            }
            
            describe("multiple") {
                it("2 * 3 = 6") {
                    expect(calculator.multiple(2, 3)).to(equal(6))
                }
            }
            
            describe("division") {
                context("6 / 2") {
                    it("return 3") {
                        expect(calculator.division(6, 2)).to(equal(3))
                    }
                }
                
                context("6 / 0") {
                    it("return nil") {
                        expect(calculator.division(6, 0)).to(beNil())
                    }
                }
            }
        }
    }
}
