package callingJavaClass;

import java.util.Random;

public class GenerateRandomID {

    public  int generateRandomID(){
        int random= 1 + new Random().nextInt(6);


        return random;
    }

}