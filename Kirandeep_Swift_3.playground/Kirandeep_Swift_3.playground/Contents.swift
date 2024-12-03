class Computer {
    private var brand: String
    private var processor: String
    private var ram: Int
    
    init(brand: String, processor: String, ram: Int) {
        self.brand = brand
        self.processor = processor
        self.ram = ram
    }
    
    func displaySpecs() {
        print("Brand: \(brand), \nProcessor: \(processor), \nRAM: \(ram)GB")
    }
    func getMake() -> String {
        return self.brand
    }
    func getProcessor() -> String {
        return self.processor
    }
    func getRam() -> Int{
        return self.ram
    }
    func setRam(newRam: Int) {
           if newRam > 0 {
               ram = newRam
           } else {
               print("Invalid RAM value!")
           }
       }
}

// Subclass Laptop
class Laptop: Computer {
    private var isTouchscreen: Bool
    
    // Initializer
    init(brand: String, processor: String, ram: Int, isTouchscreen: Bool) {
        self.isTouchscreen = isTouchscreen
        super.init(brand: brand, processor: processor, ram: ram)
    }
    
    // Overridden method
    override func displaySpecs() {
        super.displaySpecs()
        print("Touchscreen: \(isTouchscreen ? "Yes" : "No")")
    }
}

// Subclass Desktop
class Desktop: Computer {
    private var hasDedicatedGPU: Bool
    
    // Initializer
    init(brand: String, processor: String, ram: Int, hasDedicatedGPU: Bool) {
        self.hasDedicatedGPU = hasDedicatedGPU
        super.init(brand: brand, processor: processor, ram: ram)
    }
    
    // Overridden method
    override func displaySpecs() {
        super.displaySpecs()
        print("Dedicated GPU: \(hasDedicatedGPU ? "Yes" : "No")")
    }
}

// Subclass Server
class Server: Computer {
    private var rackUnits: Int
       
       // Initializer
       init(brand: String, processor: String, ram: Int, rackUnits: Int) {
           self.rackUnits = rackUnits
           super.init(brand: brand, processor: processor, ram: ram)
       }
       
       // Getter
       func getRackUnits() -> Int {
           return rackUnits
       }
       
       // Setter
       func setRackUnits(newRackUnits: Int) {
           if newRackUnits > 0 {
               rackUnits = newRackUnits
           } else {
               print("Invalid rack units value!")
           }
       }
       
       // Overridden displaySpecs
       override func displaySpecs() {
           super.displaySpecs()
           print("Rack Units: \(getRackUnits())")
    }
}

// Test the classes

func testComputers() {
    // Create a Laptop object
    let laptop = Laptop(brand: "Apple", processor: "M1", ram: 16, isTouchscreen: false)
    print("Laptop Specs:")
    laptop.displaySpecs()
    print()
    
    // Create a Desktop object
    let desktop = Desktop(brand: "Dell", processor: "Intel i7", ram: 32, hasDedicatedGPU: true)
    print("Desktop Specs:")
    desktop.displaySpecs()
    print()
    
    // Create a Server object
    let server = Server(brand: "HP", processor: "Xeon E5", ram: 64, rackUnits: 2)
    print("Server Specs:")
    server.displaySpecs()
}

// Run the test
testComputers()


