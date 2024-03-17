//
//  CustomButton.swift
//  assignmentYoutube
//
//  Created by Roh on 3/16/24.
//

import UIKit

//    override init(frame: CGRect) {
//        super .init(frame: frame)
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }

class ButtonBuilder {
    private var _frame: CGRect?
    private var _backgroundColor: UIColor = .clear
    private var _title: String = "제목"
    private var _titleState: UIControl.State = .normal
    private var _titleColor: UIColor = .clear
    private var _titleColorState: UIControl.State = .normal
    private var _image: UIImage?
    private var _imageState: UIControl.State = .normal
    private var _translatesAutoresizingMaskIntoConstraints: Bool = true
    private var _cornerRadius: CGFloat = .zero
    private var _isEnable: Bool?
    
    
    func set(frame: CGRect?) -> Self {
        _frame = frame
        return self
    }
    
    func set(backgroundColor: UIColor) -> Self {
        self._backgroundColor = backgroundColor
        return self
    }
    
    func set(title: String, titleState: UIControl.State) -> Self {
        self._title = title
        self._titleState = titleState
        return self
    }
    
    func set(titleColor: UIColor, titleColorState: UIControl.State) -> Self {
        self._titleColor = titleColor
        self._titleColorState = titleColorState
        return self
    }
    
    func set(image: UIImage?, imageState: UIControl.State) -> Self {
        self._image = image
        self._imageState = imageState
        return self
    }
    
    func set(translatesAutoresizingMaskIntoConstraints: Bool) -> Self {
        self._translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        return self
    }
    
    func set(cornerRadius: CGFloat) -> Self {
        self._cornerRadius = cornerRadius
        return self
    }
    
    func set(isEnable: Bool) -> Self {
        self._isEnable = isEnable
        return self
    }
    
    func build() -> UIButton {
        let button = UIButton(frame: .zero)
//        button.frame = _frame ?? CGRect(x: 0, y: 0, width: 0, height: 0)
        button.backgroundColor = _backgroundColor
        button.setTitle(_title, for: _titleState)
        button.setTitleColor(_titleColor, for: _titleColorState)
        button.setImage(_image, for: _imageState)
        button.translatesAutoresizingMaskIntoConstraints = _translatesAutoresizingMaskIntoConstraints
        button.layer.cornerRadius = _cornerRadius
        button.isEnabled = _isEnable ?? true
        return button
    }
}
