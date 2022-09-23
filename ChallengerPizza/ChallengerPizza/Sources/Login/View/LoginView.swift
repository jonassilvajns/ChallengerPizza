//
//  LoginView.swift
//  ChallengerPizza
//
//  Created by Jonas Silva on 21/09/22.
//
import UIKit


class LoginView: UIView {
    
    // MARK: - Propertties
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView(frame: .zero)
        scrollView.keyboardDismissMode = .interactive
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView

    }()
    
    let contentView: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    private lazy var bannerImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Image")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var labelLogin: UILabel = {
        var label = UILabel()
        label.text = "Entrar"
        label.textColor = .black
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
    private lazy var textFieldUserName: UITextField = {
        var textField = UITextField()
        textField.placeholder = "Username"
        textField.textColor = .black
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        textField.keyboardType = .default
        textField.textAlignment = .center
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    
    private lazy var textFieldPassword: UITextField = {
        var textField = UITextField()
        textField.isSecureTextEntry = true
        textField.placeholder = "Password"
        textField.textColor = .black
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        textField.keyboardType = .default
        textField.textAlignment = .center
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    
    private lazy var buttonLogin: UIButton = {
        var button = UIButton()
        button.tintColor = .cyan
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    

    
    // MARK: - Constructors
    init() {
        
        super.init(frame: .zero)
        
        self.setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - Methods
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        self.endEditing(true)
        return true
    }
    
    func setupViews() {
        self.backgroundColor = .white
        self.configureSubviews()
        self.configureConstraints()
    }
    
    
    func configureSubviews() {
        addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(bannerImageView)
        contentView.addSubview(labelLogin)
        contentView.addSubview(textFieldUserName)
        contentView.addSubview(textFieldPassword)
        contentView.addSubview(buttonLogin)
    }
    
    
    
    func configureConstraints()  {
        NSLayoutConstraint.activate([
            //Layout Anchors
            //ScrollView
            scrollView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            
            //ContentView
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            //contentView.heightAnchor.constraint(equalTo: scrollView.heightAnchor).priority = .defaultLow,

        
            
            bannerImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 34),
            bannerImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            bannerImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            bannerImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.3),
        
            
            labelLogin.topAnchor.constraint(equalTo: self.bannerImageView.bottomAnchor, constant: 16),
            labelLogin.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            labelLogin.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -40),
            
            
            textFieldUserName.topAnchor.constraint(equalTo: labelLogin.bottomAnchor, constant: 60),
            textFieldUserName.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            textFieldUserName.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            
            
            textFieldPassword.topAnchor.constraint(equalTo: textFieldUserName.bottomAnchor, constant: 16),
            textFieldPassword.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            textFieldPassword.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            
            
            buttonLogin.topAnchor.constraint(equalTo: textFieldPassword.bottomAnchor, constant: 40),
            buttonLogin.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            buttonLogin.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10)
        ])
    }
    
    
    
    
    
    
}
