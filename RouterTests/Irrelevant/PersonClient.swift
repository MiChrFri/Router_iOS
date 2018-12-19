import Foundation

class PersonClient {
    private var person: Person?
    
    func myPerson() -> Person {
        return person ?? fetchPerson()
    }
    
    private func fetchPerson() -> Person {
        print("Fetching Person...🕐")
        sleep(2)
        let person = Person(name: "Michael", age: 30, credentials: nil)
        self.person = person
        print("Person fetched ✅")
        return person
    }
    
}
