package com.flyhero.flyapi.entity.base;

import java.io.Serializable;

public class Entity implements Serializable{

	/**
	 * serialVersionUID:TODO（用一句话描述这个变量表示什么）
	 * @since 1.0.0
	 */
	
	private static final long serialVersionUID = -9026378604047063333L;

	public Integer pageNo=1;
	public Integer pageSize=10;
}
