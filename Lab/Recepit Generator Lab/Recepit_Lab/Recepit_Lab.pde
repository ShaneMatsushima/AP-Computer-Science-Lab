/*
* Receipt Lab 
* Shane Matsushima
* October 9, 2018
*/

import javax.swing.JOptionPane; // Imports ibrary for the additonal window and input dialog

JOptionPane.showMessageDialog(frame, "Welcome to Kaian's");
String itemQuantityIn = JOptionPane.showInputDialog("How many items are being bought today?"); // Creates a window that users can input data
int itemQuantityUse = parseInt(itemQuantityIn); //changes string to int for the number of items
String[] itemListName = new String [itemQuantityUse]; //creates string array for item name
float[] itemList = new float[itemQuantityUse]; // creates float array for item price
float totalSum = 0; 
float tax;
float total;

for (int i = 0; i<itemQuantityUse; i++){ //for loop creates input windows for the item name and the rice name of that item
  String itemName  = JOptionPane.showInputDialog("Name of Item"); //creates input window for item name
  itemListName[i] = itemName; // places namem in array
  String itemPrice = JOptionPane.showInputDialog("Price of item"); //creates input window for item price
  float itemPriceUse = parseFloat(itemPrice); //changes price from string to foat
  itemList[i] = itemPriceUse; // places price into array
}

for(int x = 0; x< itemQuantityUse; x++){ // for loop to find total sum
  float additionalValue;
  additionalValue = itemList[x];
  totalSum = totalSum + additionalValue;
}
println("Thank you for shopping at Kaian's");
println("*********************************");
for(int y = 0; y< itemQuantityUse; y++){ //serial prints the name and prices of the items
  println(itemListName[y] + ": $" + itemList[y]);
}
// rest of code does the math for tax and total and makes it so the prices are to the nearest hundredths place
println("---------------------------------");
println("Total Sum: $" + totalSum);
tax = totalSum*(0.04712);
tax = 0.01*floor(tax * 100.0);
println("Tax: $" + tax);
total = totalSum + tax;
total = 0.01*floor(total * 100.0);
println("total Cost: $" + total);
println("---------------------------------");

 
 
