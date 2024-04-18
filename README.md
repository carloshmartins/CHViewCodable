# CHViewCodable

[![SPM](https://img.shields.io/badge/spm-compatible-brightgreen.svg?style=for-the-badge)](https://swift.org/package-manager)
![Platforms](https://img.shields.io/badge/Platforms-iOS-blue.svg?style=for-the-badge)

CHViewCodable is designed to be used with any iOS Projects based on View-Code

- ✅ LayoutDimension

The Swift Package Manager is a tool for managing the distribution of Swift code. It’s integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies.

- This code is heavily inspired from https://github.com/SnapKit/SnapKit and some internal tools used in my past jobs.

## Installing
Make sure Xcode is installed first and then add this SPM via git url inside Xcode, just like any other Package.

**Use as dependency**

Add the following to your Package.swift file's dependencies:

```swift
.package(url: "https://github.com/carloshmartins/CHViewCodable", from: "1.0.0"),
```

And then import wherever needed: `import CHViewCodable`

Feel free to add your own!

## How-to

Import the Package into your desired View
```swift
import CHViewCodable
```

Call this function
```swift
yourView.layout(using: LayoutProxy)
```

Two ways of using the function

```swift
  view.layout { proxy in
      proxy.top == topAnchor
      proxy.leading == leadingAnchor
      proxy.trailing == trailingAnchor
      proxy.bottom == bottomAnchor
  }
```

or

```swift
  view.layout {
      $0.top == topAnchor
      $0.leading == leadingAnchor
      $0.trailing == trailingAnchor
      $0.bottom == bottomAnchor
  }
```

## Example

```swift
import UIKit
import CHViewCodable

class TestingView: UIView {
    
    private lazy var view: UIView = {
       let view = UIView()
        
        return view
    }()
    
    private lazy var topConstraint = NSLayoutConstraint()
    private lazy var leadingConstraint = NSLayoutConstraint()
    private lazy var trailingConstraint = NSLayoutConstraint()
    private lazy var bottomConstraint = NSLayoutConstraint()
    
    func build() {
        // Without offset
        view.layout {
            $0.top == topAnchor
            $0.leading == leadingAnchor
            $0.trailing == trailingAnchor
            $0.bottom == bottomAnchor
        }
        
        // With offset
        view.layout {
            $0.top == topAnchor + 50
            $0.leading == leadingAnchor + 50
            $0.trailing == trailingAnchor - 50
            $0.bottom == bottomAnchor - 50
        }
        
        // With Constraints, if you want to customize different priority or so
        view.layout {
            topConstraint = $0.top.equal(to: topAnchor, priority: .defaultHigh)
            leadingConstraint = $0.leading.equal(to: leadingAnchor)
            trailingConstraint = $0.leading.equal(to: leadingAnchor)
            bottomConstraint = $0.bottom.equal(to: bottomAnchor)
        }
    }
}
```
