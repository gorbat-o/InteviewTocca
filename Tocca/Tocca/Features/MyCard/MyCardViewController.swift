//
//  MyCardViewController.swift
//  Tocca
//
//  Created by Oleg  on 7/3/19.
//  Copyright © 2019 Oleg . All rights reserved.
//

import UIKit

final class MyCardViewController: UIViewController {
    private var topView: UIView!

    private var titleLabel: UILabel!

    private var qrCodeContainer: UIView!
    private var qrCodeStackView: UIStackView!
    private var profileImageView: UIImageView!
    private var profileNameLabel: UILabel!
    private var profilePositionLabel: UILabel!
    private var qrCodeImageView: UIImageView!

    private var qrCodeCaptionLabel: UILabel!

    private var bottomRoundedView: UIView!

    private var qrCodeScanButtonContainer: UIView!
    private var qrCodeScanButtonTitleLabel: UILabel!
    private var qrCodeScanButton: UIButton!

    private var shareButtonContainer: UIView!
    private var shareButtonTitleLabel: UILabel!
    private var shareButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        setupTopView()
        setupTitleLabel()

        setupQrCodeContainer()
        setupQrCodeStackView()
        setupProfileImageView()
        setupProfileNameLabel()
        setupProfilePositionLabel()
        setupQRCodeImageView()
        setupQRCodeStackViewSpacings()

        setupQrCodeCaptionLabel()

        setupBottomRoundedView()
        setupQrCodeScanButtonContainer()
        setupQrCodeScanButtonTitleLabel()
        setupQrCodeScanButton()
        setupShareButtonContainer()
        setupShareButtonTitleLabel()
        setupShareButton()

        setupConstraints()
    }
}

private extension MyCardViewController {
    func setupTopView() {
        topView = UIView()
        topView.translatesAutoresizingMaskIntoConstraints = false
        topView.backgroundColor = UIColor(hex: 0x315CCF)
        view.addSubview(topView)
    }

    func setupTitleLabel() {
        titleLabel = UILabel()
        titleLabel.font = .boldSystemFont(ofSize: 40)
        titleLabel.textAlignment = .center
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "My Card"
        titleLabel.textColor = UIColor.white
        topView.addSubview(titleLabel)
    }

    func setupQrCodeContainer() {
        qrCodeContainer = UIView()
        qrCodeContainer.translatesAutoresizingMaskIntoConstraints = false
        qrCodeContainer.backgroundColor = .white
        qrCodeContainer.layer.cornerRadius = 20
        topView.addSubview(qrCodeContainer)
    }

    func setupQrCodeStackView() {
        qrCodeStackView = UIStackView()
        qrCodeStackView.translatesAutoresizingMaskIntoConstraints = false
        qrCodeStackView.axis = .vertical
        qrCodeStackView.alignment = .center
        qrCodeStackView.backgroundColor = .clear
        qrCodeContainer.addSubview(qrCodeStackView)
    }

    func setupProfileImageView() {
        profileImageView = UIImageView()
        profileImageView.image = UIImage(named: "randomPerson")
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        profileImageView.contentMode = .scaleAspectFill
        profileImageView.clipsToBounds = true
        profileImageView.layer.cornerRadius = 40
        qrCodeStackView.addArrangedSubview(profileImageView)
    }

    func setupProfileNameLabel() {
        profileNameLabel = UILabel()
        profileNameLabel.font = .boldSystemFont(ofSize: 20)
        profileNameLabel.textAlignment = .center
        profileNameLabel.translatesAutoresizingMaskIntoConstraints = false
        profileNameLabel.text = "Tanya Ofek"
        qrCodeStackView.addArrangedSubview(profileNameLabel)
    }

    func setupProfilePositionLabel() {
        profilePositionLabel = UILabel()
        profilePositionLabel.font = .systemFont(ofSize: 12)
        profilePositionLabel.textColor = .lightGray
        profilePositionLabel.textAlignment = .center
        profilePositionLabel.translatesAutoresizingMaskIntoConstraints = false
        profilePositionLabel.text = "UX Designer at Tocca.io"
        qrCodeStackView.addArrangedSubview(profilePositionLabel)
    }

    func setupQRCodeImageView() {
        qrCodeImageView = UIImageView()
        qrCodeImageView.image = UIImage(named: "qrcode")
        qrCodeImageView.translatesAutoresizingMaskIntoConstraints = false
        qrCodeImageView.contentMode = .scaleAspectFit
        qrCodeStackView.addArrangedSubview(qrCodeImageView)
    }

    func setupQRCodeStackViewSpacings() {
        qrCodeStackView.setCustomSpacing(12.0, after: profileImageView)
        qrCodeStackView.setCustomSpacing(4.0, after: profileNameLabel)
        qrCodeStackView.setCustomSpacing(12.0, after: profilePositionLabel)
    }

    func setupQrCodeCaptionLabel() {
        qrCodeCaptionLabel = UILabel()
        qrCodeCaptionLabel.font = .systemFont(ofSize: 13)
        qrCodeCaptionLabel.textAlignment = .center
        qrCodeCaptionLabel.numberOfLines = 0
        qrCodeCaptionLabel.translatesAutoresizingMaskIntoConstraints = false
        qrCodeCaptionLabel.text = "Point other person phone camera to scan QR Code"
        qrCodeCaptionLabel.textColor = UIColor(hex: 0x86A2E8)
        topView.addSubview(qrCodeCaptionLabel)
    }

    func setupBottomRoundedView() {
        bottomRoundedView = UIView()
        bottomRoundedView.translatesAutoresizingMaskIntoConstraints = false
        bottomRoundedView.backgroundColor = UIColor(hex: 0xF5F8FD)
        view.addSubview(bottomRoundedView)
    }

    func setupQrCodeScanButtonContainer() {
//        qrCodeScanButtonContainer = UIView()
//        qrCodeScanButtonContainer.backgroundColor = .blue
//        view.addSubview(qrCodeScanButtonContainer)
    }

    func setupQrCodeScanButtonTitleLabel() {

    }

    func setupQrCodeScanButton() {

    }

    func setupShareButtonContainer() {
//        shareButtonContainer = UIView()
//        shareButtonContainer.backgroundColor = .red
//        view.addSubview(shareButtonContainer)
    }

    func setupShareButtonTitleLabel() {

    }

    func setupShareButton() {

    }

    func setupConstraints() {
        NSLayoutConstraint.activate([
            // Setup topView
            topView.topAnchor.constraint(equalTo: view.topAnchor),
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            // Setup TitleLabel
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 8),
            titleLabel.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -8),
            // Setup QRCodeContainer
            qrCodeContainer.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            qrCodeContainer.centerXAnchor.constraint(equalTo: topView.centerXAnchor),
            qrCodeContainer.leadingAnchor.constraint(greaterThanOrEqualTo: topView.leadingAnchor, constant: 20),
            qrCodeContainer.trailingAnchor.constraint(lessThanOrEqualTo: topView.trailingAnchor, constant: -20),
            qrCodeContainer.widthAnchor.constraint(equalToConstant: 250),
            // Setup QRCodeStackView
            qrCodeStackView.topAnchor.constraint(equalTo: qrCodeContainer.topAnchor, constant: 20),
            qrCodeStackView.leadingAnchor.constraint(equalTo: qrCodeContainer.leadingAnchor, constant: 20),
            qrCodeStackView.trailingAnchor.constraint(equalTo: qrCodeContainer.trailingAnchor, constant: -20),
            qrCodeStackView.bottomAnchor.constraint(equalTo: qrCodeContainer.bottomAnchor, constant: -20),
            // Setup profileImageView
            profileImageView.heightAnchor.constraint(equalToConstant: 80),
            profileImageView.widthAnchor.constraint(equalTo: profileImageView.heightAnchor),
            // Setup qrCodeImageView
            qrCodeImageView.heightAnchor.constraint(equalToConstant: 200),
            qrCodeImageView.widthAnchor.constraint(equalTo: qrCodeImageView.heightAnchor),
            // Setup qrCodeCaptionLabel
            qrCodeCaptionLabel.topAnchor.constraint(equalTo: qrCodeContainer.bottomAnchor, constant: 8),
            qrCodeCaptionLabel.leadingAnchor.constraint(equalTo: qrCodeContainer.leadingAnchor),
            qrCodeCaptionLabel.trailingAnchor.constraint(equalTo: qrCodeContainer.trailingAnchor),
            qrCodeCaptionLabel.bottomAnchor.constraint(equalTo: topView.bottomAnchor, constant: -80),
            // Setup bottomRoundedView
            bottomRoundedView.topAnchor.constraint(equalTo: topView.bottomAnchor),
            bottomRoundedView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomRoundedView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomRoundedView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            ])
    }
}
