#
#  Be sure to run `pod spec lint Tutorials.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.

Pod::Spec.new do |spec|
  spec.name         = "Tutorials"
  spec.version      = "1.1.3"
  spec.summary      = "Help developers create interactive tutorial experience for iOS applications"
  spec.description  = <<-DESC
    Tutorials help developers create interactive tutorial experience for iOS applications. Utilizing TutorialViewController, it showcases step-by-step guides with dynamic content including text, images, and highlighted areas.
                   DESC
  spec.homepage     = "https://github.com/Enryun/TutorialKit"
  spec.screenshots  = "https://github.com/Enryun/TutorialKit/assets/45484154/7ddce1ee-6783-4a55-9197-26e1abbce29a", "https://github.com/Enryun/TutorialKit/assets/45484154/a53fd5a3-1a92-4a42-b5e1-4645345e92aa"

   spec.license      = { :type => "MIT", :text => 'MIT License
Copyright (c) 2024 James Thang

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.' }

  spec.author             = { "JamesThang" => "jamesthang1996@gmail.com" }
  spec.social_media_url   = "https://www.linkedin.com/in/jamesthang/"

  spec.platform     = :ios
  spec.platform     = :ios, "12.0"

  spec.source       = { :git => "https://github.com/Enryun/TutorialKit.git", :tag => "#{spec.version}" }

  spec.module_name = 'TutorialKit'
  spec.vendored_frameworks = 'Sources/TutorialKit.xcframework'
  spec.exclude_files = "Sources/Exclude"
  spec.swift_versions = '5.4'

end
