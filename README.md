# TagListView

![output](https://user-images.githubusercontent.com/1002964/227971049-ace421f6-8952-4e4a-87d1-6de82a585490.gif)

`TagListView` is a container view which aligns its children(tags) from left to right and from top to bottom. It has the following benefits:
- The alignment is done by setting children' frames and not using Auto Layout, which should theoretically give a faster layout calculation.
- It adjusts its height to fit all its children automatically.
- Its children can be any subclass of `UIView`.

## Features

![output](https://user-images.githubusercontent.com/1002964/228303631-2392e511-08ff-45d4-b24d-cf2bdf047662.gif)
```swift
var alignment: Alignment { get set }
```
It controls how the children within a row should be placed in the main axis. Possible values are `start`, `center` and `end`.


![output](https://user-images.githubusercontent.com/1002964/228305746-e6854893-5921-4e7a-b059-4b0eb5ee7812.gif)
```swift
var crossAxisAlignment: Alignment { get set }
```
It controls how the children within a row should be aligned relative to each other in the cross axis. Possible values are `start`, `center` and `end`.


![output](https://user-images.githubusercontent.com/1002964/228308389-1357bb9c-5676-454a-8f91-a1f44acfa702.gif)
```swift
var spacing: CGFloat { get set }
```
It controls how much space to place between children in a row in the main axis.


![output](https://user-images.githubusercontent.com/1002964/228309221-ed8414ac-477c-44f6-bc9e-8684b9a7b156.gif)
```swift
var rowSpacing: CGFloat { get set }
```
It controls how much space to place between the rows themselves in the cross axis.


```swift
func addTagView(_ view: UIView)
func removeTagView(_ view: UIView)
```
These two functions should be used to manage `tags` rather than `addSubview` and `removeFromSuperview`.


### Remarks
For `TagListView` to layout properly its width must be constrainted horizontally by
- Setting a width constraint equal to a constant.
- Setting left and right constraints with 'equal' relation. 
- Setting the frame's width directly.

## Installation

### Swift Package Manager

This repository is ready as a package for SPM.

### Manually

Just drag `Sources/TagListView/TagListView.swift` to your project and it's all done.
