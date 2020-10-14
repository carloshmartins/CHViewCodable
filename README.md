# CHViewCodable

[![SPM](https://img.shields.io/badge/spm-compatible-brightgreen.svg?style=for-the-badge)](https://swift.org/package-manager)
![Platforms](https://img.shields.io/badge/Platforms-iOS-blue.svg?style=for-the-badge)

A package manager that installs all my main View Code Helpers/Extensions used in my personal projects.

CHViewCodable is designed to be used with any iOS Projects based on View-Code; uses User Defaults and it needs to create lazy variable in computed variable for UI Objects. It consists of:

- ✅ AutolayoutWrappers
- ✅ UIView+Extensions

The Swift Package Manager is a tool for managing the distribution of Swift code. It’s integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies.

## Why is it called CHViewCodable?
Carlos Henrique's ViewCodable

## Installing
Make sure Xcode is installed first and then add this SPM via git url inside Xcode, just like any other Package.

**Use as dependency**

Add the following to your Package.swift file's dependencies:

```swift
.package(url: "https://github.com/carloshmartins/CHViewCodable", from: "0.2.0"),
```

And then import wherever needed: `import CHViewCodable`

Feel free to add your own!

