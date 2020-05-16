import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 * Created by Junxian Chen on 2020-05-14.
 */
public class Nineteen {
    public static void main(String[] args) throws IOException {
        var process = Runtime.getRuntime().exec("bash runNineteen.sh");

        BufferedReader lineReader = new BufferedReader(new InputStreamReader(process.getInputStream()));
        lineReader.lines().forEach(System.out::println);

        BufferedReader errorReader = new BufferedReader(new InputStreamReader(process.getErrorStream()));
        errorReader.lines().forEach(System.out::println);
    }
}

