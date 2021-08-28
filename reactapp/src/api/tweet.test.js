const tweet = require("./tweet")
// @ponicode
describe("tweet.addTweetApi", () => {
    test("0", () => {
        let callFunction = () => {
            tweet.addTweetApi("Dwarf Crocodile")
        }
    
        expect(callFunction).not.toThrow()
    })

    test("1", () => {
        let callFunction = () => {
            tweet.addTweetApi("Nile Crocodile")
        }
    
        expect(callFunction).not.toThrow()
    })

    test("2", () => {
        let callFunction = () => {
            tweet.addTweetApi("Spectacled Caiman")
        }
    
        expect(callFunction).not.toThrow()
    })

    test("3", () => {
        let callFunction = () => {
            tweet.addTweetApi("Saltwater Crocodile")
        }
    
        expect(callFunction).not.toThrow()
    })

    test("4", () => {
        let callFunction = () => {
            tweet.addTweetApi("Australian Freshwater Crocodile")
        }
    
        expect(callFunction).not.toThrow()
    })

    test("5", () => {
        let callFunction = () => {
            tweet.addTweetApi(undefined)
        }
    
        expect(callFunction).not.toThrow()
    })
})
