echo "Start compiling..."
cd nineteen

echo "Compiling framework.jar..."
cd ./src/framework
javac *.java
jar cfm framework.jar manifest.mf *.class 
mv framework.jar ../../bin

echo "Compiling App1.jar and App2.jar..."
cd ../app
javac -cp ../framework/ *.java
jar cf App1.jar App1.class
jar cf App2.jar App2.class
mv *.jar ../../bin

echo "Cleaning Java classes..."
cd ..
find . -name '*.class' -delete

echo "Running..."
cd ../bin
java -jar framework.jar ./pride-and-prejudice.txt