//
//  LoginTests.swift
//  TestBookUITests
//
//  Created by 佐藤 賢 on 2019/08/15.
//  Copyright © 2019 佐藤 賢. All rights reserved.
//

import XCTest

class LoginTests: XCTestCase {

    let app = XCUIApplication()

    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testLogin() {
        let loginEmailTextField = app.textFields["login_email_textfield"]
        loginEmailTextField.tap()
        loginEmailTextField.typeText("sample@example.com")
        
        let loginPasswordTextField = app.secureTextFields["login_password_textfield"]
        loginPasswordTextField.tap()
        loginPasswordTextField.typeText("password")
        
        let loginButton = app.buttons["login_login_button"]
        loginButton.tap()
        
        
        let emailLabel = app.staticTexts["user_email_label"].label
        let expectEmailAddress = "sample@example.com"
        XCTAssertEqual(emailLabel, expectEmailAddress, "表示されているメールアドレスが登録時と同じである")
        
        let nicknameLabel = app.staticTexts["user_nickname_label"].label
        let expectNickname = "太郎"
        XCTAssertEqual(nicknameLabel, expectNickname, "表示されているニックネームが登録時と同じである")
    }
}
