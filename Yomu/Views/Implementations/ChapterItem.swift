//
//  MangaChapterCollectionViewItem.swift
//  Yomu
//
//  Created by Sendy Halim on 6/16/16.
//  Copyright © 2016 Sendy Halim. All rights reserved.
//

import AppKit
import RxSwift

class ChapterItem: NSCollectionViewItem {
  @IBOutlet weak var chapterTitle: NSTextField!
  @IBOutlet weak var chapterNumber: NSTextField!
  @IBOutlet weak var chapterPreview: NSImageView!

  var disposeBag = DisposeBag()

  func didEndDisplaying() {
    chapterPreview.image = .None

    disposeBag = DisposeBag()
  }
}
