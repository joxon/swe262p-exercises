cd ./src/framework
javac *.java
jar cfm framework.jar manifest.mf *.class 
mv framework.jar ../../bin

cd ../app
javac -cp ../framework/ *.java
jar cf App1.jar App1.class
jar cf App2.jar App2.class
mv *.jar ../../bin

cd ..
find . -name '*.class' -delete

cd ../bin
java -jar framework.jar ./pride-and-prejudice.txt