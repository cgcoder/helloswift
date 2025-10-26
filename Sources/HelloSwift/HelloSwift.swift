// The Swift Programming Language
// https://docs.swift.org/swift-book
//
// This is a learning repository for Swift basics
// Run with: swift run

@main
struct HelloSwift {
    static func main() {
        print("=== Welcome to Swift Learning! ===\n")
        
        // Run all examples
        basicSyntax()
        variablesAndConstants()
        dataTypes()
        controlFlow()
        functions()
        optionals()
        collections()
        closures()
        structsAndClasses()
        
        print("\n=== End of Swift Learning Examples ===")
    }
    
    // MARK: - Basic Syntax
    static func basicSyntax() {
        print("--- Basic Syntax ---")
        print("Hello, Swift!")
        print("Swift is a powerful and modern programming language.")
        print()
    }
    
    // MARK: - Variables and Constants
    static func variablesAndConstants() {
        print("--- Variables and Constants ---")
        
        // Variables (can be changed)
        var greeting = "Hello"
        print("Variable: \(greeting)")
        greeting = "Hi"
        print("Changed to: \(greeting)")
        
        // Constants (cannot be changed)
        let name = "Swift"
        print("Constant: \(name)")
        
        // Type annotations
        let age: Int = 10
        let version: Double = 6.2
        print("Age: \(age), Version: \(version)")
        print()
    }
    
    // MARK: - Data Types
    static func dataTypes() {
        print("--- Data Types ---")
        
        let integer: Int = 42
        let floatingPoint: Double = 3.14159
        let boolean: Bool = true
        let string: String = "Swift"
        let character: Character = "A"
        
        print("Integer: \(integer)")
        print("Double: \(floatingPoint)")
        print("Boolean: \(boolean)")
        print("String: \(string)")
        print("Character: \(character)")
        
        // String interpolation
        print("Interpolation: \(integer) is an integer")
        print()
    }
    
    // MARK: - Control Flow
    static func controlFlow() {
        print("--- Control Flow ---")
        
        // If-else
        let temperature = 25
        if temperature > 30 {
            print("It's hot!")
        } else if temperature > 20 {
            print("It's warm!")
        } else {
            print("It's cold!")
        }
        
        // Switch
        let fruit = "apple"
        switch fruit {
        case "apple":
            print("It's an apple!")
        case "banana":
            print("It's a banana!")
        default:
            print("Unknown fruit")
        }
        
        // For loop
        print("Counting 1 to 3:")
        for i in 1...3 {
            print("  \(i)")
        }
        
        // While loop
        var count = 0
        while count < 2 {
            print("  While count: \(count)")
            count += 1
        }
        print()
    }
    
    // MARK: - Functions
    static func functions() {
        print("--- Functions ---")
        
        func greet(name: String) -> String {
            return "Hello, \(name)!"
        }
        
        func add(a: Int, b: Int) -> Int {
            return a + b
        }
        
        print(greet(name: "Developer"))
        print("2 + 3 = \(add(a: 2, b: 3))")
        
        // Function with default parameter
        func greetWithDefault(name: String = "World") -> String {
            return "Hi, \(name)!"
        }
        
        print(greetWithDefault())
        print(greetWithDefault(name: "Swift"))
        print()
    }
    
    // MARK: - Optionals
    static func optionals() {
        print("--- Optionals ---")
        
        // Optional declaration
        var optionalName: String? = "John"
        print("Optional with value: \(optionalName ?? "nil")")
        
        // Optional binding (if let)
        if let name = optionalName {
            print("Unwrapped: \(name)")
        } else {
            print("Optional is nil")
        }
        
        // Nil value
        optionalName = nil
        print("Optional set to nil: \(optionalName ?? "nil")")
        
        // Guard statement
        func printLength(of string: String?) {
            guard let str = string else {
                print("String is nil")
                return
            }
            print("Length: \(str.count)")
        }
        
        printLength(of: "Swift")
        printLength(of: nil)
        print()
    }
    
    // MARK: - Collections
    static func collections() {
        print("--- Collections ---")
        
        // Arrays
        var fruits = ["apple", "banana", "orange"]
        print("Array: \(fruits)")
        fruits.append("grape")
        print("After append: \(fruits)")
        print("First fruit: \(fruits[0])")
        
        // Dictionaries
        var scores = ["Alice": 95, "Bob": 87, "Charlie": 92]
        print("Dictionary: \(scores)")
        scores["David"] = 88
        print("After adding David: \(scores)")
        
        // Sets
        var uniqueNumbers: Set = [1, 2, 3, 3, 4]
        print("Set (no duplicates): \(uniqueNumbers)")
        print()
    }
    
    // MARK: - Closures
    static func closures() {
        print("--- Closures ---")
        
        // Closure as a variable
        let sayHello = { (name: String) -> String in
            return "Hello, \(name)!"
        }
        print(sayHello("Swift"))
        
        // Closure as parameter
        let numbers = [1, 2, 3, 4, 5]
        let doubled = numbers.map { $0 * 2 }
        print("Original: \(numbers)")
        print("Doubled: \(doubled)")
        
        let evenNumbers = numbers.filter { $0 % 2 == 0 }
        print("Even numbers: \(evenNumbers)")
        print()
    }
    
    // MARK: - Structs and Classes
    static func structsAndClasses() {
        print("--- Structs and Classes ---")
        
        // Struct (value type)
        struct Person {
            var name: String
            var age: Int
            
            func introduce() -> String {
                return "Hi, I'm \(name) and I'm \(age) years old."
            }
        }
        
        let person = Person(name: "Alice", age: 30)
        print(person.introduce())
        
        // Class (reference type)
        class Vehicle {
            var brand: String
            var year: Int
            
            init(brand: String, year: Int) {
                self.brand = brand
                self.year = year
            }
            
            func description() -> String {
                return "\(year) \(brand)"
            }
        }
        
        let car = Vehicle(brand: "Tesla", year: 2024)
        print("Vehicle: \(car.description())")
        print()
    }
}
