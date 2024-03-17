//
//  File.swift
//  assignmentYoutube
//
//  Created by Roh on 3/16/24.
//

import UIKit

class Button {
    static func makeButtonNextSizeSmall() -> UIButton {
        ButtonBuilder()
//            .set(frame: CGRect(x: 279, y: 567, width: 74, height: 42))
            .set(backgroundColor: .blue)
            .set(title: "다음", titleState: .normal)
            .set(titleColor: .white, titleColorState: .normal)
            .set(cornerRadius: 4)
            .set(translatesAutoresizingMaskIntoConstraints: false)
            .build()
    }
    
    static func makeButtonNext() -> UIButton {
        ButtonBuilder()
//            .set(frame: CGRect(x: 107, y: 250, width: 300, height: 300))
            .set(backgroundColor: .blue)
            .set(title: "마이 제목", titleState: .normal)
            .set(titleColor: .white, titleColorState: .normal)
            .set(cornerRadius: 4)
            .set(translatesAutoresizingMaskIntoConstraints: false)
            .build()
    }
    
    static func makeButtonCheck() -> UIButton {
        ButtonBuilder()
//            .set(frame: CGRect(x: 23, y: 442, width: 331, height: 42))
            .set(backgroundColor: .blue)
            .set(title: "확인", titleState: .normal)
            .set(titleColor: .white, titleColorState: .normal)
            .set(cornerRadius: 4)
            .set(translatesAutoresizingMaskIntoConstraints: false)
            .build()
    }
}
