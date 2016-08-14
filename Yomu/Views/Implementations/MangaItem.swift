//
//  MangaCell.swift
//  Yomu
//
//  Created by Sendy Halim on 6/15/16.
//  Copyright © 2016 Sendy Halim. All rights reserved.
//

import AppKit
import RxSwift

class MangaItem: NSCollectionViewItem {
  @IBOutlet weak var mangaImageView: NSImageView!
  @IBOutlet weak var titleContainerView: NSBox!
  @IBOutlet weak var titleTextField: NSTextField!
  @IBOutlet weak var accessoryButton: NSButton!
  @IBOutlet weak var categoryTextField: NSTextField!

  var disposeBag = DisposeBag()

  override func viewWillLayout() {
    super.viewWillLayout()
    let border = Border.Bottom(1.0, 0.0, Config.style.darkenBackgroundColor)
    titleContainerView.drawBorder(border)
  }
}
