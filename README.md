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

**Happy Coding! Cheers!!** 🥂 

## How to Contribute?

Have an idea? Found a bug? See [how to contribute](https://github.com/igatitech/FBGroupSwiftUI/blob/master/CONTRIBUTION.md). Every small or large contribution to this project is appreciated.

## Author
You can find more about me here : [Gati Shah](https://igati.tech)

If you wish to contact me, 
Email at: [connect@igati.tech](connect@igati.tech)

Reach me on: [LinkedIn](https://www.linkedin.com/in/igatitech/)

## License
Copyright 2020 iGatiTech

This project is distributed under the terms & conditions of [MIT License](https://github.com/igatitech/FBGroupSwiftUI/blob/master/LICENSE).

