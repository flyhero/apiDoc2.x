package com.flyhero.flyapi.utils;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import sun.misc.BASE64Encoder;
import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import freemarker.template.TemplateExceptionHandler;

public class DocUtil {
    public static Configuration configure=null;
    
    public DocUtil(){
        configure=new Configuration();
        configure.setDefaultEncoding("utf-8");
    }
    /**
     * 根据Doc模板生成word文件
     * @param dataMap 需要填入模板的数据
     * @param downloadType 文件名称
     * @param savePath 保存路径
     */
    public static void createDoc(Map<String,Object> dataMap,String downloadType,String savePath){
        try {
            //加载需要装填的模板
            Template template=null;
            //设置模板装置方法和路径，FreeMarker支持多种模板装载方法。可以重servlet，classpath,数据库装载。
            //加载模板文件，放在testDoc下
            configure.setClassForTemplateLoading(DocUtil.class, "/testDoc");
            //设置对象包装器
//            configure.setObjectWrapper(new DefaultObjectWrapper());
            //设置异常处理器
            configure.setTemplateExceptionHandler(TemplateExceptionHandler.IGNORE_HANDLER);
            //定义Template对象，注意模板类型名字与downloadType要一致
            template=configure.getTemplate(downloadType+".xml");
            File outFile=new File(savePath);
            Writer out=null;
            out=new BufferedWriter(new OutputStreamWriter(new FileOutputStream(outFile), "utf-8"));
            template.process(dataMap, out);
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (TemplateException e) {
            e.printStackTrace();
        }
    }
	public void createDoc(Map<String, Object> dataMap)
			throws IOException {
		String fileName="G:/temp"+(int)(Math.random()*10000)+".doc";
		String rootPath=getClass().getResource("/").getFile().toString();  
		// dataMap 要填入模本的数据文件
		configure.setDirectoryForTemplateLoading(new File(rootPath));
		Template t = configure.getTemplate("DoOffice_Jacob_touxiang.ftl");
		// 输出文档路径及名称
		File outFile = new File(fileName);
		Writer out = null;
		FileOutputStream fos = null;
		try {
			fos = new FileOutputStream(outFile);
			OutputStreamWriter oWriter = new OutputStreamWriter(fos, "UTF-8");
			// 这个地方对流的编码不可或缺，使用main（）单独调用时，应该可以，但是如果是web请求导出时导出后word文档就会打不开，并且包XML文件错误。主要是编码格式不正确，无法解析。
			// out = new BufferedWriter(new OutputStreamWriter(new
			// FileOutputStream(outFile)));
			out = new BufferedWriter(oWriter);
		} catch (FileNotFoundException e1) {
			e1.printStackTrace();
		}

		try {
			t.process(dataMap, out);
			out.close();
			fos.close();
		} catch (TemplateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		// System.out.println("---------------------------");
	}
    public String getImageStr(String imgFile){
        InputStream in=null;
        byte[] data=null;
        try {
            in=new FileInputStream(imgFile);
            data=new byte[in.available()];
            in.read(data);
            in.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        BASE64Encoder encoder=new BASE64Encoder();
        return encoder.encode(data);
    }
	public static void main(String[] args) throws IOException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		dataMap.put("name", "Blue");
		dataMap.put("gender", "男");
		dataMap.put("birth", "1992-2-2");
		dataMap.put("grade", "1203班");
		dataMap.put("major", "软件");
		dataMap.put("Id", "201219010110");
		dataMap.put("phone", "123456");
		dataMap.put("roomId", "S-222");
		dataMap.put("zhengzhi", "团员");
		dataMap.put("IdCard", "411322199202022212");
		dataMap.put("address", "河南省郑州市地球村");
		dataMap.put("parent_phone1", "11111111");
		dataMap.put("parent_phone2", "22222222");
//		dataMap.put("gold", "这里是目标，新学期新气象，好好学习，天天向上");
		List<String> Strs=new ArrayList<String>();
		Strs.add("1111111111111111111");
		Strs.add("222222222222222");
		Strs.add("333333333333333");
		dataMap.put("tests", Strs);
		DocUtil mdoc = new DocUtil();
		mdoc.createDoc(dataMap);
	}

    
}