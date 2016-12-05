package com.flyhero.flyapi.utils;

public final class FormatUtil {

	/**
	 * 打印输入到控制台
	 * 
	 * @param jsonStr
	 * @author lizhgb
	 * @Date 2015-10-14 下午1:17:22
	 */
	public static void printJson(String jsonStr) {
		System.out.println(formatJson(jsonStr));
	}

	/**
	 * 格式化
	 * 
	 * @param jsonStr
	 * @return
	 * @author lizhgb
	 * @Date 2015-10-14 下午1:17:35
	 */
	public static String formatJson(String jsonStr) {
		if (null == jsonStr || "".equals(jsonStr))
			return "";
		StringBuilder sb = new StringBuilder();
		char last = '\0';
		char current = '\0';
		int indent = 0;
		for (int i = 0; i < jsonStr.length(); i++) {
			last = current;
			current = jsonStr.charAt(i);
			switch (current) {
			case '{':
			case '[':
				sb.append(current);
				sb.append('\n');
				indent++;
				addIndentBlank(sb, indent);
				break;
			case '}':
			case ']':
				sb.append('\n');
				indent--;
				addIndentBlank(sb, indent);
				sb.append(current);
				break;
			case ',':
				sb.append(current);
				if (last != '\\') {
					sb.append('\n');
					addIndentBlank(sb, indent);
				}
				break;
			default:
				sb.append(current);
			}
		}

		return sb.toString();
	}

	public static String formatJsonToDoc(String jsonStr) {
		if (null == jsonStr || "".equals(jsonStr))
			return "";
		StringBuilder sb = new StringBuilder();
		char last = '\0';
		char current = '\0';
		int indent = 0;
		for (int i = 0; i < jsonStr.length(); i++) {
			last = current;
			current = jsonStr.charAt(i);
			switch (current) {
			case '{':
			case '[':
				sb.append("<w:p>");
				addpPr(sb);
				sb.append("<w:r>");
				addrPr(sb);
				addCurrent(sb,current);
				sb.append("</w:r></w:p><w:p>");
				addpPr(sb);
				indent++;
				addTab(sb, indent);
				sb.append("<w:r>");
				addpPr(sb);
				sb.append("<w:t>");
				break;
			case '}':
			case ']':
				sb.append("</w:t></w:r></w:p><w:p>");
				addpPr(sb);
				indent--;
				addTab(sb, indent);
				sb.append("<w:r>");
				addrPr(sb);
				sb.append("<w:t>");
				sb.append(current);
				if(i==(jsonStr.length()-1)){
					sb.append("</w:t></w:r></w:p>");
				}
				
				break;
			case ',':
				
				sb.append(current);
				sb.append("</w:t></w:r></w:p><w:p>");
				addpPr(sb);
				addTab(sb, indent);
				sb.append("	<w:r>");
				addrPr(sb);
				sb.append("<w:t>");
				break;
			case '\t':
				System.out.println("===========");
			default:
				sb.append(current);
			}
		}

		return sb.toString();
	}

	/**
	 * 添加space
	 * 
	 * @param sb
	 * @param indent
	 * @author lizhgb
	 * @Date 2015-10-14 上午10:38:04
	 */
	private static void addIndentBlank(StringBuilder sb, int indent) {
		for (int i = 0; i < indent; i++) {
			sb.append('\t');
		}
	}
	
	private static void addTab(StringBuilder sb, int indent) {
		for (int i = 0; i < indent; i++) {
			sb.append("<w:r><w:rPr><w:rFonts w:hint=\"eastAsia\" /><w:lang w:val=\"en-US\" w:eastAsia=\"zh-CN\" /></w:rPr><w:tab /></w:r>");
		}
	}
	
	private static void addpPr(StringBuilder sb) {
		sb.append("<w:pPr><w:rPr><w:rFonts w:hint=\"eastAsia\" /><w:lang w:val=\"en-US\" w:eastAsia=\"zh-CN\" /></w:rPr></w:pPr>");
	}
	private static void addrPr(StringBuilder sb) {
		sb.append("<w:rPr><w:rFonts w:hint=\"eastAsia\" /><w:lang w:val=\"en-US\" w:eastAsia=\"zh-CN\" /></w:rPr>");
	}
	private static void addCurrent(StringBuilder sb,char current) {
		sb.append("<w:t>"+current+"</w:t>");
	}
	
}