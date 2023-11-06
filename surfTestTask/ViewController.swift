//
//  ViewController.swift
//  surfTestTask
//
//  Created by Захар Литвинчук on 07.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - UI Elements
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "man")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = imageView.frame.width / 2
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Иванов Иван Иванович"
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Middle iOS-разработчик, опыт более 2-х лет"
        label.textColor = .systemGray
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.numberOfLines = 0
        return label
    }()
    
    private let iconImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "locationIcon")
        return imageView
    }()
    
    private let townLabel: UILabel = {
        let label = UILabel()
        label.text = "Воронеж"
        label.textColor = .systemGray
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.numberOfLines = 0
        return label
    }()
    
    //MARK: - StackView's
    private lazy var descriptionStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [iconImage, townLabel])
        stackView.axis = .horizontal
        stackView.spacing = 2
        return stackView
    }()
    
    //MARK: - halfView elements
    private let halfView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    private let mySkillsLabel: UILabel = {
        let label = UILabel()
        label.text = "Мои навыки"
        label.font = .systemFont(ofSize: 16, weight: .medium)
        return label
    }()

    //MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        title = "Профиль"
        
        view.addSubview(imageView)
        view.addSubview(nameLabel)
        view.addSubview(descriptionLabel)
        view.addSubview(descriptionStackView)
        view.addSubview(halfView)
        halfView.addSubview(mySkillsLabel)
        setConstraints()
    }
    
    //MARK: - setConstraints
    private func setConstraints() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionStackView.translatesAutoresizingMaskIntoConstraints = false
        halfView.translatesAutoresizingMaskIntoConstraints = false
        mySkillsLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            //imageView
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 42),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 120),
            imageView.heightAnchor.constraint(equalToConstant: 120),
            
            //nameLabel
            nameLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 16),
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameLabel.widthAnchor.constraint(equalToConstant: 160),
            nameLabel.heightAnchor.constraint(equalToConstant: 64),
            
            //descriptionLabel
            descriptionLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 4),
            descriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            descriptionLabel.widthAnchor.constraint(equalToConstant: 300),
            descriptionLabel.heightAnchor.constraint(equalToConstant: 20),
            
            //descriptionStackView
            descriptionStackView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 2),
            descriptionStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            //iconImage sizes
            iconImage.heightAnchor.constraint(equalToConstant: 16),
            iconImage.widthAnchor.constraint(equalToConstant: 16),
            
            //halfView
            halfView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),
            halfView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            halfView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            halfView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            //mySkillsLabel
            mySkillsLabel.topAnchor.constraint(equalTo: halfView.topAnchor, constant: 20),
            mySkillsLabel.leadingAnchor.constraint(equalTo: halfView.safeAreaLayoutGuide.leadingAnchor, constant: 16),
        ])
    }

}

