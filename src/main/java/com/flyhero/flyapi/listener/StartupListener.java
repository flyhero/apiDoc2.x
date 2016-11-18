package com.flyhero.flyapi.listener;

import java.util.ArrayList;
import java.util.List;

import org.quartz.CronScheduleBuilder;
import org.quartz.CronTrigger;
import org.quartz.Job;
import org.quartz.JobBuilder;
import org.quartz.JobDataMap;
import org.quartz.JobDetail;
import org.quartz.JobKey;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.SchedulerFactory;
import org.quartz.TriggerBuilder;
import org.quartz.TriggerKey;
import org.quartz.impl.StdSchedulerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.scheduling.quartz.MethodInvokingJobDetailFactoryBean;
import org.springframework.scheduling.quartz.SchedulerFactoryBean;

import com.flyhero.flyapi.entity.OperateLog;
import com.flyhero.flyapi.scheduler.MyJob;
import com.flyhero.flyapi.scheduler.QuartzManager;
import com.flyhero.flyapi.scheduler.ScheduleJob;
import com.flyhero.flyapi.service.LogService;
import com.flyhero.flyapi.utils.Constant;

/**
 * spring启动后执行
 * 
 * @ClassName: StartupListener
 * @author flyhero(http://flyhero.top)
 * @date 2016年11月17日 下午3:20:01
 *
 */
public class StartupListener implements
		ApplicationListener<ContextRefreshedEvent> {

	@Autowired
	private LogService logService;

	@Autowired
	private Scheduler scheduler;

	@Override
	public void onApplicationEvent(ContextRefreshedEvent arg0) {

		
		if (arg0.getApplicationContext().getParent() == null) {// root
																// application
																// context
																// 没有parent，他就是老大.
			// 需要执行的逻辑代码，当spring容器初始化完成后就会执行该方法。
			System.out
					.println("=================监听spring的启动=====================");
			
			ScheduleJob job = new ScheduleJob();
			job.setJobId("10001");
			job.setJobName("JobName");
			job.setJobGroup("dataWork");
			job.setJobStatus("1");
			job.setCronExpression("0/5 * * * * ?");
			job.setDesc("数据导入任务");
			job.setBeanClass("com.flyhero.flyapi.scheduler.MyJob");
			try {
				QuartzManager.addJob(job);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SchedulerException e) {
				e.printStackTrace();
			}
			
/*			try {
				// 这里获取任务信息数据
				List<ScheduleJob> jobList = new ArrayList<ScheduleJob>();

				for (int i = 0; i < 3; i++) {
					ScheduleJob job = new ScheduleJob();
					job.setJobId("10001" + i);
					job.setJobName("JobName_" + i);
					job.setJobGroup("dataWork");
					job.setJobStatus("1");
					job.setCronExpression("0/5 * * * * ?");
					job.setDesc("数据导入任务");
					System.out.println("==="+i);
					jobList.add(job);
				}

				for (ScheduleJob job : jobList) {
					System.out.println("==="+job.getDesc());
					TriggerKey triggerKey = TriggerKey.triggerKey(
							job.getJobName(), job.getJobGroup());

					// 获取trigger，即在spring配置文件中定义的 bean id="myTrigger"
					CronTrigger trigger;

					trigger = (CronTrigger) scheduler.getTrigger(triggerKey);

					// 不存在，创建一个
					if (null == trigger) {
						JobDetail jobDetail = JobBuilder
								.newJob(MyJob.class)
								.withIdentity(job.getJobName(),
										job.getJobGroup()).build();
						jobDetail.getJobDataMap().put("scheduleJob", job);

						// 表达式调度构建器
						CronScheduleBuilder scheduleBuilder = CronScheduleBuilder
								.cronSchedule(job.getCronExpression());

						// 按新的cronExpression表达式构建一个新的trigger
						trigger = TriggerBuilder
								.newTrigger()
								.withIdentity(job.getJobName(),
										job.getJobGroup())
								.withSchedule(scheduleBuilder).build();
						 scheduler.scheduleJob(jobDetail, trigger);
						 System.out.println("即将启动任务");
						 scheduler.start();
					} else {
						// Trigger已存在，那么更新相应的定时设置
						// 表达式调度构建器
						CronScheduleBuilder scheduleBuilder = CronScheduleBuilder
								.cronSchedule(job.getCronExpression());

						// 按新的cronExpression表达式重新构建trigger
						trigger = trigger.getTriggerBuilder()
								.withIdentity(triggerKey)
								.withSchedule(scheduleBuilder).build();

						// 按新的trigger重新设置job执行
						 scheduler.rescheduleJob(triggerKey, trigger);
					}
				}

			} catch (SchedulerException e) {
				e.printStackTrace();
			}
*/
		}

	}

}
