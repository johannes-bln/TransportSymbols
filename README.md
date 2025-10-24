# TransportSymbols


![Swift](https://img.shields.io/badge/Swift-6.2-orange?logo=swift)
![Platform](https://img.shields.io/badge/Platforms-iOS%2016%2B%20|%20macOS%2012%2B%20|%20watchOS%207%2B%20|%20Mac%20Catalyst-blue)
![License](https://img.shields.io/badge/License-MIT-lightgrey)
![SwiftPM](https://img.shields.io/badge/SwiftPM-compatible-brightgreen)
![Build](https://img.shields.io/badge/Status-Stable-success)


First of all: I wrote this library a long time ago for the simple reason that it is reusable. I found it too time-consuming to keep rewriting it for different apps, so now you can always import it, which makes things a lot faster.


A lightweight SwiftUI library that provides consistent, scalable transport line symbols for iOS, macOS, watchOS, and Mac Catalyst.  
Designed for apps that display public transport data such as S-Bahn, U-Bahn, Tram, Bus, Ferry, or regional trains.

---

## Examples
### 1. Standart Icon
In this example, we display a simple transport symbol, without any further customization. The example demonstrates how easy it is to use, simply by importing the **TransportSymbols**.

```swift
import SwiftUI
import TransportSymbols

struct ContentView: View {
    var body: some View {
        VStack {
            SbahnSymbolView() 
        }
    }
}
```

### 1. Preview
It's very simple; with just a few lines of code, you can add the symbol.
<img width="1417" height="849" alt="SimplePReview" src="https://github.com/user-attachments/assets/0b137a13-2356-457c-be44-b9b9943c4063" />

### 2. Usage in station list 
In this example, we show how to display the symbols in a simple list with sample station names, simply by importing the **TransportSymbols**.

```swift
import SwiftUI
import TransportSymbols

struct ContentView: View {
    var body: some View {
        List {
            stationRow(name: "Example", sbahn: true, ubahn: true, tram: true)
            stationRow(name: "Test", sbahn: false, ubahn: true, tram: true)
            stationRow(name: "Some Place", sbahn: false, ubahn: true, tram: false)
        }
    }
    
    @ViewBuilder
    func stationRow(name: String, sbahn: Bool, ubahn: Bool, tram: Bool) -> some View {
        VStack(alignment: .leading, spacing: 3) {
            Text(name)
                .bold()
            
            HStack {
                if sbahn { SbahnSymbolView() }
                if ubahn { UbahnSymbolView() }
                if tram { TramSymbolView() }
            }
        }
    }
}

#Preview {
    ContentView()
}
```

### 2. Preview
A bit broken down, but that's how you could do it.
<img width="1464" height="860" alt="ExampleInList" src="https://github.com/user-attachments/assets/0d5556af-c5d2-4e17-bddc-4988e197ef1c" />


### 3. Custom Symbol/Text
You can also create your own symbols based on this pattern.

```swift
import SwiftUI
import TransportSymbols

struct ContentView: View {
    var body: some View {
        VStack {
            TransportSymbolView(backgroundColor: .green) {
                Image(systemName: "tram")
                    .imageScale(.small)
                    .foregroundStyle(.white)
                    
            }
        }
    }
}
#Preview {
    ContentView()
}
```


### 3. Preview
Here is an example with an SF symbol.
<img width="1349" height="489" alt="ExampleWithSymbol" src="https://github.com/user-attachments/assets/7c0a5cb1-020c-43b0-9480-d4e76dc359e5" />



