void setup() {
    // Normal case
    printPartOfWord("Staphylococcus Epidermidis", 0, 3); 

    // Last 4 letters
    String word = "Staphylococcus Epidermidis";
    printPartOfWord(word, word.length() - 4, word.length()); 

    // Negative index
    printPartOfWord("Staphylococcus Epidermidis", -1, 3); // Error

    // Start index > end index
    printPartOfWord("Staphylococcus Epidermidis", 5, 3); // Error

    // End index out of bounds
    printPartOfWord("Staphylococcus Epidermidis", 3, 40); // Error
}

void printPartOfWord(String word, int startIndex, int endIndex) {
    if (startIndex < 0 || endIndex > word.length()) {
        System.out.println("Error: Index out of bounds.");
        return;
    }

    if (startIndex > endIndex) {
        System.out.println("Error: Start index cannot be greater than end index.");
        return;
    }

    String part = word.substring(startIndex, endIndex);
    System.out.println(part);
}
