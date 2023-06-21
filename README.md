# Swift cmark

Forked from [apple/swift-cmark](https://github.com/apple/swift-cmark)



## Adding `ArgumentParser` as a Dependency

### Note

**If you only use SPM for importing, it is recommended to use Apple's SPM. For the currently forked project, it is more recommended to use CocoaPods and Carthage.**

#### SPM

In your `Package.swift` Swift Package Manager manifest, add the following dependency to your `dependencies` argument:

```swift
.package(url: "https://github.com/apple/swift-cmark.git", .branch("main")),
```

#### Cocoapods

```
pod 'cmark-gfm', :git => 'https://github.com/ghostcrying/swift-cmark.git', :tag => '0.0.3'
  # pod install
```

#### Carthage

```
git "https://github.com/ghostcrying/swift-cmark.git"

# carthage build --no-skip-current --platform iOS --use-xcframeworks
```

