import java.util.ArrayList;

void setup()
{
  ArrayList<String> elements = new ArrayList<String>();
  elements.add("Argon");
  elements.add("Neon");
  elements.add("Helium");

  ArrayList<Integer> phalanges = new ArrayList<Integer>();
  phalanges.add(2);
  phalanges.add(5);
  phalanges.add(17);

  ArrayList<Boolean> isMurdered = new ArrayList<Boolean>();
  isMurdered.add(false);
  isMurdered.add(true);
  isMurdered.add(true);

  // Test the methods:
  println("Printing elements:");
  printList(elements);

  println("\nSum of phalanges:");
  println(sumList(phalanges));

  println("\nAverage of phalanges:");
  println(averageList(phalanges));

  noLoop(); // since you don't need draw to loop
}

// Method to print each String in the ArrayList
void printList(ArrayList<String> listToPrint)
{
  for (String item : listToPrint) {
    println(item);
  }
}

// Method to return the sum of integers in the ArrayList
int sumList(ArrayList<Integer> listToSum)
{
  int sum = 0;
  for (int num : listToSum)
  {
    sum += num;
  }
  return sum;
}

// Method to return the average of integers in the ArrayList
int averageList(ArrayList<Integer> listToAverage)
{
  if (listToAverage.size() == 0) return 0; // avoid division by zero
  int sum = sumList(listToAverage);
  return (int) sum / listToAverage.size();
}
