//
//  ContentView.swift
//  Example_iOS
//
//  Created by 陈卓 on 2023/6/25.
//

import SwiftUI
import MarkdownUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                if #available(iOS 15.0, *) {
                    Markdown(ChatMarkText0).markdownTheme(.gitHub)
                        .padding()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

let ChatMarkText0 =
#"""
## Supported Platforms

- iOS/tvOS 15 and above
- macOS 12 and above
- watchOS 8 and above
- Linux

## Installation

### Swift Package Manager
- File > Swift Packages > Add Package Dependency
- Add https://github.com/alfianlosari/ChatGPTSwift.git

### Cocoapods
```ruby
platform :ios, '15.0'
use_frameworks!

target 'MyApp' do
  pod 'ChatGPTSwift', '~> 1.3.1'
end
```

## Requirement

Register for API key from [OpenAI](https://openai.com/api). Initialize with api key

```swift
let api = ChatGPTAPI(apiKey: "API_KEY")
```

## Usage

There are 2 APIs: stream and normal

### Stream

The server will stream chunks of data until complete, the method `AsyncThrowingStream` which you can loop using For-Loop like so:

```swift
Task {
    do {
        let stream = try await api.sendMessageStream(text: "What is ChatGPT?")
        for try await line in stream {
            print(line)
        }
    } catch {
        print(error.localizedDescription)
    }
}
```

### Normal
A normal HTTP request and response lifecycle. Server will send the complete text (it will take more time to response)

```swift
Task {
    do {
        let response = try await api.sendMessage(text: "What is ChatGPT?")
        print(response)
    } catch {
        print(error.localizedDescription)
    }
}
```
"""#


let ChatMarkText1 =
  #"""
  You can call out code or a command within a sentence with single backticks.
  The text within the backticks will not be formatted.
  
  ```
  Use `git status` to list all new or modified files that haven't yet been committed.
  ```
  
  Use `git status` to list all new or modified files that haven't yet been committed.
  
  To format code or text into its own distinct block, either use triple backticks
  (` ``` `) or indent each line by 4 spaces.
  
  ~~~
  After creating a group, any modifier you apply to the group affects
  all of that group’s members.
  
  ```swift
  Group {
      Text("SwiftUI")
      Text("Combine")
      Text("Swift System")
  }
  .font(.headline)
  ```
  ~~~
  
  After creating a group, any modifier you apply to the group affects
  all of that group’s members.
  
  ```swift
  Group {
      Text("SwiftUI")
      Text("Combine")
      Text("Swift System")
  }
  .font(.headline)
  ```
  """#
