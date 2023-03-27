//
//  ViewController.swift
//  TagListView Example
//
//  Created by hlwan on 27/3/2023.
//

import UIKit
import Then
import TinyConstraints
import TagListView


class TagListViewController: UIViewController {
    @IBOutlet var scrollContentView: UIView!
    private let tagListView = TagListView()
    
    private let tagListView2 = TagListView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollContentView.addSubview(tagListView)
        
        tagListView.do {
            $0.edgesToSuperview()
            $0.backgroundColor = .systemRed.withAlphaComponent(0.1)
        }
    }
    
    @IBAction func onTapAddLabelButton(_ sender: UIButton) {
        let label = UILabel().then {
            $0.text = "XXXXXX"
        }
        tagListView.addTagView(label)
    }
    
    @IBAction func onTapAddLongLabelButton(_ sender: UIButton) {
        let label = UILabel().then {
            $0.text = "YYYYYYYYYYYYYYYYYY"
        }
        tagListView.addTagView(label)
    }
    
    @IBAction func onTapAddVeryLongLabelButton(_ sender: UIButton) {
        let label = UILabel().then {
            $0.numberOfLines = 0
            $0.text = "ZZZZZZZZZZZZZZZZZZ ZZZZZZZZZZZZZZZZZZ ZZZZZZZZZZZZZZZZZZ"
        }
        tagListView.addTagView(label)
    }
    
    @IBAction func onTapAddViewWithRandomHeightButton(_ sender: UIButton) {
        let height: Int = .random(in: 30...80)
        let hue: CGFloat = .random(in: 0...1)
        let view = UIView().then {
            $0.backgroundColor = UIColor(hue: hue, saturation: 0.7, brightness: 1, alpha: 1)
            $0.width(60)
            $0.height(CGFloat(height))
        }
        tagListView.addTagView(view)
    }
    
    @IBAction func onAlignmentSegmentValueChange(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
            case 0:
                tagListView.alignment = .start
            case 1:
                tagListView.alignment = .center
            default:
                tagListView.alignment = .end
        }
    }
    
    @IBAction func onCrossAxisAlignmentSegmentValueChange(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
            case 0:
                tagListView.crossAxisAlignment = .start
            case 1:
                tagListView.crossAxisAlignment = .center
            default:
                tagListView.crossAxisAlignment = .end
        }
    }
    
    @IBAction func onSpacingSliderValueChange(_ sender: UISlider) {
        tagListView.spacing = CGFloat(sender.value)
    }
    
    @IBAction func onRowSpacingSliderValueChange(_ sender: UISlider) {
        tagListView.rowSpacing = CGFloat(sender.value)
    }
}
