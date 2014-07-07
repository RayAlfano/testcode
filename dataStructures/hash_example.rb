#Code by Ray Alfano
#Copyright Ray Alfano 2014
#Class to illustrate a simple hash table, printing keys and values, and manipulating values

class HashExample
  #Define a simple hash table
  debtsTable={'JamesMoneyOwed' => 30, 'TomMoneyOwed' => 20, 'SteveMoneyOwed' => 10, 'Client' => 400}

  #Print each key and value
  debtsTable.each { |key, value| print key + ' = ' + value.to_s + "\n" }

  #Print a statement notifying the user that the money owed to Tom is to be updated
  print "The amount owed to Tom will be updated.\n"

  #Set the amount owed to Tom to 0
  debtsTable['TomMoneyOwed'] = 0

  #Print each value in the hash after that update
  debtsTable.each { |key, value| print key + ' = ' + value.to_s + "\n"}

end