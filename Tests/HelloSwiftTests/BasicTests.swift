import Testing

// This file demonstrates basic Swift testing
// Tests help verify that your code works correctly

@Suite("Swift Basics Tests")
struct BasicTests {
    
    // MARK: - String Tests
    @Test("String concatenation works correctly")
    func testStringConcatenation() {
        let greeting = "Hello"
        let name = "Swift"
        let message = "\(greeting), \(name)!"
        
        #expect(message == "Hello, Swift!")
    }
    
    @Test("String length is calculated correctly")
    func testStringLength() {
        let word = "Swift"
        #expect(word.count == 5)
    }
    
    // MARK: - Math Tests
    @Test("Addition works correctly")
    func testAddition() {
        let result = 2 + 3
        #expect(result == 5)
    }
    
    @Test("Multiplication works correctly")
    func testMultiplication() {
        let result = 4 * 5
        #expect(result == 20)
    }
    
    // MARK: - Array Tests
    @Test("Arrays can be created and accessed")
    func testArrays() {
        let numbers = [1, 2, 3, 4, 5]
        
        #expect(numbers.count == 5)
        #expect(numbers[0] == 1)
        #expect(numbers[4] == 5)
    }
    
    @Test("Array map transforms elements")
    func testArrayMap() {
        let numbers = [1, 2, 3]
        let doubled = numbers.map { $0 * 2 }
        
        #expect(doubled == [2, 4, 6])
    }
    
    @Test("Array filter selects matching elements")
    func testArrayFilter() {
        let numbers = [1, 2, 3, 4, 5, 6]
        let evenNumbers = numbers.filter { $0 % 2 == 0 }
        
        #expect(evenNumbers == [2, 4, 6])
    }
    
    // MARK: - Dictionary Tests
    @Test("Dictionaries store key-value pairs")
    func testDictionaries() {
        let scores = ["Alice": 95, "Bob": 87]
        
        #expect(scores["Alice"] == 95)
        #expect(scores["Bob"] == 87)
        #expect(scores.count == 2)
    }
    
    // MARK: - Optional Tests
    @Test("Optionals can contain values")
    func testOptionalWithValue() {
        let optionalName: String? = "Swift"
        
        #expect(optionalName != nil)
        #expect(optionalName == "Swift")
    }
    
    @Test("Optionals can be nil")
    func testOptionalNil() {
        let optionalValue: Int? = nil
        
        #expect(optionalValue == nil)
    }
    
    // MARK: - Struct Tests
    @Test("Structs can be created and used")
    func testStructs() {
        struct Point {
            var x: Int
            var y: Int
        }
        
        let point = Point(x: 10, y: 20)
        
        #expect(point.x == 10)
        #expect(point.y == 20)
    }
}
