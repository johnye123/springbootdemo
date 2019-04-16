package com.springboot.demo.logback;


import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class TestLogBack {
    private static Logger Log = LoggerFactory.getLogger(Test.class);

    @Test
    public void testLogBack(){
        Log.debug("debug测试");
        Log.info("info测试");
        Log.error("error测试");
        /*try{
            throw new RuntimeException("error RuntimeException 测试");
        }catch(Exception e){
            Log.error(e.getMessage(),e);
        }*/
    }
}
