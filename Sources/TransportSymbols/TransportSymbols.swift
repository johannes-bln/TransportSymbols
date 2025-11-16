import SwiftUI

@available(iOS 16, macCatalyst 12, macOS 12, watchOS 7, tvOS 15, *)
public struct TransportSymbolView<Content: View>: View {
    let backgroundColor: Color
    let content: Content

    public init(backgroundColor: Color, @ViewBuilder content: () -> Content) {
        self.backgroundColor = backgroundColor
        self.content = content()
    }

    public var body: some View {
        RoundedRectangle(cornerRadius: 14, style: .continuous)
            .fill(backgroundColor)
            .frame(width: 45, height: 28)
            .overlay {
                content
                    .minimumScaleFactor(0.5)
                    .allowsTightening(true)
            }
            .accessibilityHidden(true)
    }
}

// MARK: - Typografie-Helfer

@available(iOS 16, macCatalyst 12, macOS 12, watchOS 7, tvOS 15, *)
private enum TSFont {
    static let big  = Font.system(size: 20, weight: .heavy, design: .rounded)
    static let mid  = Font.system(size: 15, weight: .heavy, design: .rounded)
}


@available(iOS 16, macCatalyst 12, macOS 12, watchOS 7, tvOS 15, *)
public struct SbahnSymbolView: View {
    public init() {}
    public var body: some View {
        TransportSymbolView(backgroundColor: Color(red: 0.235, green: 0.541, blue: 0.322)) {
            Text("S").font(TSFont.big).foregroundColor(.white)
        }
    }
}


@available(iOS 16, macCatalyst 12, macOS 12, watchOS 7, tvOS 15, *)
public struct UbahnSymbolView: View {
    public init() {}
    public var body: some View {
        TransportSymbolView(backgroundColor: Color(red: 0.168, green: 0.380, blue: 0.651)) {
            Text("U").font(TSFont.big).foregroundColor(.white)
        }
    }
}


@available(iOS 16, macCatalyst 12, macOS 12, watchOS 7, tvOS 15, *)
public struct TramSymbolView: View {
    public init() {}
    public var body: some View {
        TransportSymbolView(backgroundColor: Color(red: 0.776, green: 0.2, blue: 0.157)) {
            Text("Tram").font(TSFont.mid).foregroundColor(.white)
        }
    }
}


@available(iOS 16, macCatalyst 12, macOS 12, watchOS 7, tvOS 15, *)
public struct BusSymbolView: View {
    public init() {}
    public var body: some View {
        TransportSymbolView(backgroundColor: Color(red: 0.592, green: 0.118, blue: 0.475)) {
            Text("BUS").font(TSFont.mid).foregroundColor(.white)
        }
    }
}


@available(iOS 16, macCatalyst 12, macOS 12, watchOS 7, tvOS 15, *)
public struct FerrySymbolView: View {
    public init() {}
    public var body: some View {
        TransportSymbolView(backgroundColor: Color(red: 0.0, green: 0.502, blue: 0.725)) {
            Text("F").font(TSFont.big).foregroundColor(.white)
        }
    }
}

@available(iOS 16, macCatalyst 12, macOS 12, watchOS 7, tvOS 15, *)
public struct LongDistanceSymbolView: View {
    public init() {}
    public var body: some View {
        TransportSymbolView(backgroundColor: Color(red: 0.706, green: 0.706, blue: 0.706)) {
            Text("F").font(TSFont.mid).foregroundColor(.white) // ggf. "IC"/"ICE"
        }
    }
}

@available(iOS 16, macCatalyst 12, macOS 12, watchOS 7, tvOS 15, *)
public struct RegionalSymbolView: View {
    public init() {}
    public var body: some View {
        TransportSymbolView(backgroundColor: Color(red: 0.784, green: 0.212, blue: 0.153)) {
            Text("R").font(TSFont.mid).foregroundColor(.white)
        }
    }
}

@available(iOS 16, macCatalyst 12, macOS 12, watchOS 7, tvOS 15, *)
public struct WalkingSymbolView: View {
    public init() {}
    public var body: some View {
        TransportSymbolView(backgroundColor: .accentColor) {
            Image(systemName: "figure.walk")
                .font(.system(size: 17, weight: .heavy))
                .foregroundColor(.white)
        }
    }
}
