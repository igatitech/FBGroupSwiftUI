# FBGroupSwiftUI
User Interface similar to Facebook App Layout using latest SwiftUI Framework.

### 💻 Requirements

- macOS 15 Beta
- Xcode 11.0 Beta
- iOS 13.0 Beta

### Layout 


<h4 id="HStack"> HStack </h4>

`HStack` is used to arrange the subviews on a horizontal line. 

Example:

```swift
HStack {
   Image(post.imageIcon)
       .resizable()
       .clipShape(Circle())
       .frame(width: 60, height: 60)
                
   Text(post.username)
       .font(.headline)
   Text(post.time)
       .font(.subheadline)
                
}
```

<h4 id="VStack"> VStack </h4>

`VStack` is used to arrange the subviews on a vertical line.

Example:

```swift
VStack.init(alignment: .leading) {
   Text(post.username)
      .font(.headline)
   Text(post.time)
      .font(.subheadline)
}.padding(.leading, 8)
```

<h4 id="List"> List </h4>

`List` list container to display a list of data.

Examples:

```swift
List(0..<10) { item in
    Text("Hello World !")
}.navigationBarTitle(Text("List"), displayMode: .large)
```

![alt text](https://github.com/igatsha/FBGroupSwiftUI/blob/master/Github_data/layout.gif)          
![alt text](https://github.com/igatsha/FBGroupSwiftUI/blob/master/Github_data/Screenshot.png)

## License
Copyright 2019 Gati Shah

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
