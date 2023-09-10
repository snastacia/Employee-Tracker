
class Question {
    constructor(name, message) {
        this.name = name;
        this.message = message
    }
}

class InputQuestion extends Question {
    constructor(name, message) {
        super(name, message)
        this.type = "input"
    }
}

class ListQuestion extends Question {
    constructor(name, message, choices) {
        super(name, message)
        this.type = "list"
        this.choices = choices
    }
}

module.exports = {InputQuestion, ListQuestion}