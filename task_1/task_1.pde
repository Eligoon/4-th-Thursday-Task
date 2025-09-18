int[] arr = { 28, 230, 9, 310, 72};

void setup()
{
  int number = getRandom();
  println("Here is your random number: " + arr[number] );
}

int getRandom()
{
  int random = (int)random(arr.length);

  return random;
}
