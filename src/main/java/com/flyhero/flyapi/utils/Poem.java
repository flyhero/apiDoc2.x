package com.flyhero.flyapi.utils;

import java.io.File;
import java.net.URL;

public class Poem {
    public static void main(String[] args) {
    	 
        Poem poem = new Poem();
        poem.getFile("jdbc.properties");
        
        
        
    }

    private void getFile(String fileName) {
    	String rootPath=getClass().getResource("/").getFile().toString();  
    	System.out.println(rootPath);
        ClassLoader classLoader = getClass().getClassLoader();
        /**
        getResource()方法会去classpath下找这个文件，获取到url resource, 得到这个资源后，调用url.getFile获取到 文件 的绝对路径
        */
        URL url = classLoader.getResource(fileName);
        /**
         * url.getFile() 得到这个文件的绝对路径
         */
        System.out.println(url.getFile());
//        File file = new File(url.getFile());
//        System.out.println(file.exists());
    }
}