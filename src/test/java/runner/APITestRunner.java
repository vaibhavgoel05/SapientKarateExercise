package runner;

import com.intuit.karate.junit5.Karate;

public class APITestRunner {


    @Karate.Test Karate test() {
        //System.getProperty("user.dir")+"\\src\\test\\java\\requests");
        String commonPath=System.getProperty("user.dir")+"\\src\\test\\java";
        //String[] array= {"E:\\SeleniumWorkspaces\\SapientPracticeIntelliJ2\\SapientKarateExercise\\src\\test\\java\\requests"};
        String[] array= {commonPath+"\\requests",commonPath+"\\callingFeature",commonPath+"\\callingJavaClass"};
        return new Karate().feature(array); //return
        //zKarate.run("getcountries.feature").relativeTo(getClass());

    }

}
