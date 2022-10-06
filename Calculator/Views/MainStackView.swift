//
//  MainStackView.swift
//  Calculator
//
//  Created by Сергей Смирнов on 06.10.2022.
//

import UIKit

class MainStackView: UIStackView {
    
    private var stackViewsArray = [UIStackView]()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func createButton(title: String, tag: Int, color: UIColor) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.tag = tag
        button.backgroundColor = color
        button.tintColor = .white
        button.titleLabel?.font = .boldSystemFont(ofSize: 22)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(keyboardButtonTapped), for: .touchUpInside)
        
        return button
    }
    
    @objc private func keyboardButtonTapped(sender: UIButton) {
        print(sender.tag)
    }
    
    private func setupStackView() {
        let button0 = createButton(title: "0", tag: 0, color: .gray)
        let buttonComma = createButton(title: ",", tag: 10, color: .gray)
        let buttonEqual = createButton(title: "=", tag: 11, color: .orange)
        let firstStackView = UIStackView(subviews: [button0, buttonComma, buttonEqual])
        
        let button1 = createButton(title: "1", tag: 1, color: .gray)
        let button2 = createButton(title: "2", tag: 2, color: .gray)
        let button3 = createButton(title: "3", tag: 3, color: .gray)
        let buttonPlus = createButton(title: "+", tag: 12, color: .orange)
        let secondStackView = UIStackView(subviews: [button1, button2, button3, buttonPlus])
        
        let button4 = createButton(title: "4", tag: 4, color: .gray)
        let button5 = createButton(title: "5", tag: 5, color: .gray)
        let button6 = createButton(title: "6", tag: 6, color: .gray)
        let buttonMinus = createButton(title: "-", tag: 13, color: .orange)
        let thirdStackView = UIStackView(subviews: [button4, button5, button6, buttonMinus])
        
        let button7 = createButton(title: "7", tag: 7, color: .gray)
        let button8 = createButton(title: "8", tag: 8, color: .gray)
        let button9 = createButton(title: "9", tag: 9, color: .gray)
        let buttonMulti = createButton(title: "x", tag: 14, color: .orange)
        let fourthStackView = UIStackView(subviews: [button7, button8, button9, buttonMulti])
        
        let buttonAC = createButton(title: "AC", tag: 18, color: .darkGray)
        let buttonPlusMinus = createButton(title: "+/-", tag: 17, color: .darkGray)
        let buttonPercent = createButton(title: "%", tag: 16, color: .darkGray)
        let buttonDevide = createButton(title: "/", tag: 15, color: .orange)
        let fithfStackView = UIStackView(subviews: [buttonAC, buttonPlusMinus, buttonPercent, buttonDevide])
        
        stackViewsArray = [fithfStackView, fourthStackView, thirdStackView, secondStackView, firstStackView]
    }
}
