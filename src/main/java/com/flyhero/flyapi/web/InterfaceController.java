package com.flyhero.flyapi.web;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.socket.TextMessage;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.flyhero.flyapi.entity.Interfaces;
import com.flyhero.flyapi.entity.OperateLog;
import com.flyhero.flyapi.entity.UserProject;
import com.flyhero.flyapi.pojo.HttpResponse;
import com.flyhero.flyapi.pojo.JSONResult;
import com.flyhero.flyapi.pojo.Message;
import com.flyhero.flyapi.pojo.TeamMemberPojo;
import com.flyhero.flyapi.service.InterfaceService;
import com.flyhero.flyapi.service.LogService;
import com.flyhero.flyapi.service.ProjectService;
import com.flyhero.flyapi.service.UserProjectService;
import com.flyhero.flyapi.utils.Constant;
import com.flyhero.flyapi.utils.HttpClientUtil;
import com.flyhero.flyapi.websocket.SystemWebSocketHandler;

@Controller
@RequestMapping("interface")
public class InterfaceController extends BaseController{

	@Autowired
	private InterfaceService interfaceService;
	@Autowired
	private LogService LogService;
	@Autowired
	private ProjectService projectService;
	@Autowired
	private UserProjectService userProjectService;
	@Resource
	private SystemWebSocketHandler handler;
	
	@RequestMapping("addInterface.do")
	@ResponseBody
	public JSONResult addInterface(Interfaces interfaces,Integer projectId){
		interfaces.setCreator(getCuUser().getUserId());
		int flag=interfaceService.insertSelective(interfaces);
		if(flag != 0){
			try {
				OperateLog log=new OperateLog(getCuUser().getUserId(),getCuUser().getUserName(), projectId, Constant.TYPE_INSERT, Constant.CLASS_INTERFACE, 
						Constant.NAME_INTERFACE, "新建："+interfaces.getInterName()+"接口", JSONObject.toJSONString(interfaces));
				LogService.addLog(log);
				UserProject up=new UserProject();
				up.setUserId(getCuUser().getUserId());
				up.setProjectId(projectId);
				List<TeamMemberPojo>  list=userProjectService.findTeamMembers(up);
				Message msg = new Message();
				msg.setDate(new Date());
				msg.setFrom(-1L);
				msg.setFromName("系统广播");
				msg.setTo(0L);
				msg.setText(getCuUser().getUserName()+"新建："+interfaces.getInterName()+"接口");
				handler.sendMessageToTeam(list, new TextMessage(JSON.toJSONString(msg)));
			} catch (IOException e) {
				e.printStackTrace();
			}
			projectService.updateDoneCount(projectId);
			return new JSONResult(Constant.MSG_OK, Constant.CODE_200);
		}
		return new JSONResult(Constant.MSG_ERROR, Constant.CODE_200);
		
	}
	
	@RequestMapping("testHttp.do")
	@ResponseBody
	public JSONObject testHttp(String method,String url,String param,int jsonWay){
		System.out.println("参数为"+param+"way:"+jsonWay);
		JSONObject  jsonget=HttpClientUtil.getUrl(method, url, param,jsonWay);
		HttpResponse hr=JSON.parseObject(jsonget.toString(), HttpResponse.class);
		System.out.println(hr.toString());
	       for (Map.Entry<String, Object> entry : jsonget.entrySet()) {
	            System.out.println(entry.getKey() + ":" + entry.getValue());
	        }
	    json.put("result", hr.getContent());
		json.put("msg", Constant.MSG_OK);
		return json;
	}
	// 发布系统广播（群发）
	@ResponseBody
	@RequestMapping("send")
	public void send() throws IOException {
		Message msg = new Message();
		msg.setDate(new Date());
		msg.setFrom(-1L);
		msg.setFromName("系统广播");
		msg.setTo(0L);
		msg.setText("这是我的第一个消息");
		handler.sendMessageToUser(2L, new TextMessage(JSON.toJSONString(msg)));
	}
	
}
