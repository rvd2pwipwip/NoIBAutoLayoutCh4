//
//  Layout01ViewController.swift
//  NoIBAutoLayoutCh4
//
//  Created by Herve Desrosiers on 2020-02-26.
//  Copyright © 2020 Herve Desrosiers. All rights reserved.
//

import UIKit

class Layout01ViewController: UIViewController {
    
    private let padding: CGFloat = 50

    override func viewDidLoad() {
        super.viewDidLoad()
        setRedView()
        setGreenView()
    }

    private func setRedView() {
        view.addSubview(redView)
        NSLayoutConstraint.activate([
            redView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: padding),
            redView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: padding),
            redView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -padding),
        ])
        redView.addSubview(oneButton)
        NSLayoutConstraint.activate([
            oneButton.centerYAnchor.constraint(equalTo: redView.centerYAnchor),
            oneButton.centerXAnchor.constraint(equalTo: redView.centerXAnchor)
        ])
    }
    
    private func setGreenView() {
        view.addSubview(greenView)
        NSLayoutConstraint.activate([
            greenView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: padding),
            greenView.leadingAnchor.constraint(equalTo: redView.leadingAnchor),
            greenView.trailingAnchor.constraint(equalTo: redView.trailingAnchor),
            greenView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -padding),
            greenView.heightAnchor.constraint(equalTo: redView.heightAnchor)
        ])
        greenView.addSubview(twoButton)
        NSLayoutConstraint.activate([
            twoButton.centerYAnchor.constraint(equalTo: greenView.centerYAnchor),
            twoButton.centerXAnchor.constraint(equalTo: greenView.centerXAnchor)
        ])
    }
    
    private let redView: UIView = {
        let rv = UIView()
        rv.backgroundColor = .red
        rv.translatesAutoresizingMaskIntoConstraints = false
        return rv
    }()
    
    private let greenView: UIView = {
        let gv = UIView()
        gv.backgroundColor = .green
        gv.translatesAutoresizingMaskIntoConstraints = false
        return gv
    }()
    
    private let oneButton: UIButton = {
        let ob = UIButton()
        ob.translatesAutoresizingMaskIntoConstraints = false
        ob.setTitle("1", for: .normal)
        ob.titleLabel?.font = .systemFont(ofSize: 46)
        ob.setTitleColor(.black, for: .normal)
        return ob
    }()
    
    private let twoButton: UIButton = {
        let tb = UIButton()
        tb.translatesAutoresizingMaskIntoConstraints = false
        tb.setTitle("2", for: .normal)
        tb.titleLabel?.font = .systemFont(ofSize: 46)
        tb.setTitleColor(.black, for: .normal)
        return tb
    }()
}
