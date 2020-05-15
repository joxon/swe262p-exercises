# swe262p-exercises

Author: Junxian Chen

Repl: [@junxianchen/swe262p-exercises](https://repl.it/@junxianchen/swe262p-exercises)

## Exercise 7

Date: May 14, 2020

To run Exercise 7 please use the following commands:

```shell
cd exercise7
java Seventeen.java ../pride-and-prejudice.txt

cd nineteen/bin/
java -jar framework.jar ./pride-and-prejudice.txt
```

Or, click the "run" button above and follow the instructions.

### Seventeen

For Seventeen.java, you are asked to provide a valid class name or it will throw ClassNotFoundException. A valid class name can be:

- The top-level class:
  - `Seventeen`
- The inner interfaces and classes:
  - `Seventeen$IDataStorageManager`
  - `Seventeen$DataStorageManager`
  - `Seventeen$IStopWordManager`
  - `Seventeen$StopWordManager`
  - `Seventeen$IWordFrequencyManager`
  - `Seventeen$WordFrequencyManager`
  - `Seventeen$WordFrequencyController`
- Java interfaces and classes:
  - `java.lang.Class`
  - `java.util.List`
  - `java.io.IOException`
  - `java.nio.file.Files`
  - `java.nio.file.Path`
  - ...
  
### Nineteen

Source code for Nineteen is located at `exercise7/nineteen/src/`, not `Nineteen.java`.

For Nineteen, you may navigate to `exercise7/nineteen/bin/` and modify `config.properties`. Try to change the `app` property from `App1` to `App2` and the program should work. You can rerun the program using `java -jar framework.jar ./pride-and-prejudice.txt`.

## Exercise 6

Date: May 6, 2020

To run Exercise 6 please use the following commands:
```shell
cd exercise6

# Twenty
java Twenty.java # or
java Twenty.java ../pride-and-prejudice.txt

# TwentyOne
java -enableassertions TwentyOne.java # throws error
java -enableassertions TwentyOne.java ../pride-and-prejudice.txt # correct

# TwentyOne
java -enableassertions TwentyTwo.java # throws error
java -enableassertions TwentyTwo.java ../pride-and-prejudice.txt # correct
```

Or, click the "run" button above and follow the instructions.

## Exercise 5

Date: May 1, 2020

To run Exercise 5 please use the following commands:
```
cd exercise5
javac Fourteen.java
java Fourteen ../pride-and-prejudice.txt
javac TwentyEight.java
java TwentyEight ../pride-and-prejudice.txt
javac TwentyNine.java
java TwentyNine ../pride-and-prejudice.txt
```

Or, click the "run" button above and follow the instructions.

## Exercise 4

Date: Apr. 24, 2020

To run Exercise 4 please use the following commands:
```
cd exercise4
javac Eight.java
java Eight ../pride-and-prejudice.txt
javac Nine.java
java Nine ../pride-and-prejudice.txt
```

Or, click the "run" button above and follow the instructions.

## Exercise 3

Date: Apr. 17, 2020

To run Exercise 3 please use the following commands:
```
cd exercise3
javac Eleven.java
java Eleven ../pride-and-prejudice.txt
javac Twelve.java
java Twelve ../pride-and-prejudice.txt
javac Thirteen.java
java Thirteen ../pride-and-prejudice.txt
```

Or, click the "run" button above and follow the instructions.

## Exercise 2

Date: Apr. 7, 2020

To run Exercise 2 please use the following commands:
```
cd exercise2
javac Four.java
java Four ../pride-and-prejudice.txt
javac Five.java
java Five ../pride-and-prejudice.txt
```

Or, click the "run" button above and follow the instructions.

## Exercise 1

Date: Apr. 1, 2020

To run Exercise 1 please use the following commands:
```
cd exercise1
javac TermFreq.java
java TermFreq ../pride-and-prejudice.txt
```

Or use absolute path:
```
cd exercise1
javac TermFreq.java
java TermFreq /home/runner/swe262p-week1/pride-and-prejudice.txt
```

Or, click the "run" button above and follow the instructions.
