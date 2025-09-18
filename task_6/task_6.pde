// Declare a 2D integer array named 'board' with 8 rows and 8 columns
// This will represent the checkerboard pattern using 0s and 1s
int[][] board = new int[8][8];

// Define the size (width and height) of each square in the checkerboard
int sideLength = 40;

void setup() {
  // Set the size of the canvas to fit the full board (8 squares * 40 pixels = 320)
  size(320, 320);

  // Loop through every cell in the board
  for (int x = 0; x < 8; x++)
  {
    for (int y = 0; y < 8; y++)
    {
      // Assign a value of 0 or 1 depending on the sum of x and y
      // (x + y) % 2 gives alternating values to create a checker pattern
      board[x][y] = (x + y) % 2;
    }
  }
}

void draw() {
  // Loop through the board to draw each square
  for (int x = 0; x < 8; x++)
  {
    for (int y = 0; y < 8; y++)
    {
      // Check the value stored in the board at position [x][y]
      // If 0, fill with black; if 1, fill with white
      if (board[x][y] == 0)
      {
        fill(0); // black
      } else {
        fill(255); // white
      }

      // Draw the square at the correct position on the canvas
      // Position is calculated based on x, y, and the sideLength
      rect(x * sideLength, y * sideLength, sideLength, sideLength);
    }
  }
}
