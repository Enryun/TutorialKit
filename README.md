# TutorialKit

![iOS 12.0+](https://img.shields.io/badge/iOS-12.0%2B-blue.svg)
[![Swift Package Manager](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-brightgreen.svg)](https://github.com/apple/swift-package-manager)
[![License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](http://mit-license.org)

## Table of Contents
1. [Overview](#overview)
2. [Requirements](#requirements)
3. [Installation](#installation)
4. [Features](#features)
5. [Usage](#usage)
6. [Examples](#examples)
7. [Author](#author)

## Overview

`TutorialKit` help developers create interactive tutorial experience for iOS applications. Utilizing `TutorialViewController`, it showcases step-by-step guides with dynamic content including text, images, and highlighted areas.

<img src="https://github.com/Enryun/TutorialKit/assets/45484154/7ddce1ee-6783-4a55-9197-26e1abbce29a" width="200">
<img src="https://github.com/Enryun/TutorialKit/assets/45484154/a53fd5a3-1a92-4a42-b5e1-4645345e92aa" width="200">

## Requirements

| Platform | Minimum Version |
|----------|-----------------|
| iOS      | 12.0            |

 ## Installation
This project can be installed using Swift Package Manager.

1. Open your project in Xcode.
2. Navigate to `File` > `Swift Packages` > `Add Package Dependency`.
3. Paste the repository URL: `https://github.com/Enryun/TutorialKit`
4. Follow the prompts to add the package to your project.

For more details on using Swift Package Manager, visit [Apple's Swift Package Manager documentation](https://swift.org/package-manager/).

## Features
- Customizable tutorial steps with `Tutorial` structs.
- Support for light/dark mode with `BackgroundColor`.
- Interactive elements like `TutorialContent` for engaging tutorials.
- Flexible alignment and positioning with `TutorialAlignment`.

## Usage

### 1. Import `TutorialKit` into your view controller:

```swift
import TutorialKit
```

### 2. Configure the tutorial appearance by creating an instance of `TutorialConfiguration`:

```swift
let configuration = TutorialConfiguration(
            title: .init(font: .systemFont(ofSize: 24, weight: .semibold), textColor: .label),
            description: .init(font: .systemFont(ofSize: 16, weight: .regular), textColor: .label),
            backgroundColor: BackgroundColor(ligtModeColor: .init(color: .systemYellow, opacity: 0.7), darkModeColor: .init(color: .systemGreen, opacity: 0.3)),
            sound: .tap,
            alignment: .bottom
        )
```

You can customize the title, description, background color, sound, and alignment.

### 3. Configure the Tutorial Data:

Prepare the data for each tutorial step by creating instances of `Tutorial`. Each instance can include a title, description(s), alignment, and a defined transparent area.

```swift
let tutorials = [
    Tutorial(
        title: .init(
            text: "Study Category",
            image: UIImage(systemName: "heart")?
                .withRenderingMode(.alwaysOriginal)
                .withTintColor(.label)
        ),
        description: [
            .init(
                text: "group common things together",
                image: UIImage(systemName: "lightbulb.circle")?
                    .withRenderingMode(.alwaysOriginal)
                    .withTintColor(.label)
            ),
            .init(
                text: "Ex: Lessons from the same Subject",
                image: UIImage(systemName: "lightbulb.circle")?
                    .withRenderingMode(.alwaysOriginal)
                    .withTintColor(.label)
            )
        ],
        alignment: .bottom,
        transparentArea: .init(x: 100, y: 100, width: 150, height: 150, cornerRadius: 0)
    )
    // Add more Tutorial instances as needed.
]
```

- `title`: The main heading of a tutorial step, optionally accompanied by an image to illustrate the concept.
- `description`: Detailed information or instructions for the tutorial step, which can also include images for a more engaging presentation.
- `alignment`: Determines the screen position of the tutorial content, aiding in highlighting various UI elements.
- `transparentArea`: Defines a specific area of the screen to remain visible and interactive, focusing the user's attention on certain actions or features.

### 4.  Initialize and Present the TutorialViewController:

Create an instance of TutorialViewController with your data and configuration, then present it.

```swift
let vc = TutorialViewController(data: tutorials, configuration: configuration)
vc.showTutorials()
present(vc, animated: true)
```
That's it. When finished navigate through the data array, `TutorialViewController` will automatically be removed.

## Examples

## Author
James Thang, find me on [LinkedIn](https://www.linkedin.com/in/jamesthang/)

