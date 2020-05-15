import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 * Created by Junxian Chen on 2020-05-14.
 */
public class Nineteen {
    public static void main(String[] args) throws IOException {
        final var DISABLED = true;
        if (DISABLED) {
            System.out.println("Please go to 'nineteen/bin' and use 'java -jar framework.jar pride-and-prejudice.txt'");
        } else {
            // It won't work unless we use absolute path to load stop_words.txt
            // or copy the content of stop_words.txt as a string to the program
            // so we don't need to load an extra file.

            var PATH = "/home/runner/swe262p-exercises/exercise7/nineteen/bin/";
            var CMD = String.format("java -jar %sframework.jar %spride-and-prejudice.txt", PATH, PATH);
            
            // You cannot "cd" here
            // var process = Runtime.getRuntime().exec(new String[]{"cd", PATH, "&&", CMD});

            var process = Runtime.getRuntime().exec(CMD);

            BufferedReader lineReader = new BufferedReader(new InputStreamReader(process.getInputStream()));
            lineReader.lines().forEach(System.out::println);

            BufferedReader errorReader = new BufferedReader(new InputStreamReader(process.getErrorStream()));
            errorReader.lines().forEach(System.out::println);
        }
    }
}

