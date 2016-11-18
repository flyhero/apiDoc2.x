package com.flyhero.flyapi.scheduler;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.quartz.CronScheduleBuilder;
import org.quartz.CronTrigger;
import org.quartz.JobBuilder;
import org.quartz.JobDetail;
import org.quartz.JobExecutionContext;
import org.quartz.JobKey;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.SchedulerFactory;
import org.quartz.Trigger;
import org.quartz.TriggerBuilder;
import org.quartz.TriggerKey;
import org.quartz.impl.StdSchedulerFactory;
import org.quartz.impl.matchers.GroupMatcher;

import com.flyhero.flyapi.utils.Constant;

public class QuartzManager {

	private static SchedulerFactory sFactory = new StdSchedulerFactory();  
	/**
	 * 添加任务到任务队列 
	 * @Title: addJob  
	 * @author flyhero(http://flyhero.top)
	 * @date 2016年11月18日 上午10:32:37 
	 * @param @param job
	 * @param @throws SchedulerException
	 * @param @throws ClassNotFoundException    
	 * @return void    返回类型 
	 * @throws
	 */
    public static void addJob(ScheduleJob job) throws SchedulerException, ClassNotFoundException {  
        if (job == null || !Constant.STATUS_RUNNING.equals(job.getJobStatus())) {  
            return;  
        }  
  
        Scheduler scheduler = sFactory.getScheduler();  
        TriggerKey triggerKey = TriggerKey.triggerKey(job.getJobName(), job.getJobGroup());  
  
        CronTrigger trigger = (CronTrigger) scheduler.getTrigger(triggerKey);  
  
        // 不存在，创建一个  
        if (null == trigger) {  
            Class clazz = Class.forName(job.getBeanClass());  
  
            JobDetail jobDetail = JobBuilder.newJob(clazz).withIdentity(job.getJobName(), job.getJobGroup()).build();  
  
            jobDetail.getJobDataMap().put("ScheduleJob", job);  
  
            CronScheduleBuilder scheduleBuilder = CronScheduleBuilder.cronSchedule(job.getCronExpression());  
  
            trigger = TriggerBuilder.newTrigger().withIdentity(job.getJobName(), job.getJobGroup())  
                    .withSchedule(scheduleBuilder).build();  
  
            scheduler.scheduleJob(jobDetail, trigger);
            scheduler.start();
        } else {  
            // Trigger已存在，那么更新相应的定时设置  
            CronScheduleBuilder scheduleBuilder = CronScheduleBuilder.cronSchedule(job.getCronExpression());  
  
            // 按新的cronExpression表达式重新构建trigger  
            trigger = trigger.getTriggerBuilder().withIdentity(triggerKey).withSchedule(scheduleBuilder).build();  
  
            // 按新的trigger重新设置job执行  
            scheduler.rescheduleJob(triggerKey, trigger);  
        }  
  
        // 得到任务下一次的计划执行时间  
/*        Date nextProcessTime = trigger.getNextFireTime();  
        job.setNextProcessTime(nextProcessTime);  */
    }  
    
    
    /** 
     * 获取所有计划中的任务列表 
     *  
     * @return 
     * @throws SchedulerException 
     */  
    @Deprecated  
    public List<ScheduleJob> getAllJob() throws SchedulerException {  
        Scheduler scheduler = new StdSchedulerFactory().getScheduler();  
        GroupMatcher<JobKey> matcher = GroupMatcher.anyJobGroup();  
        Set<JobKey> jobKeys = scheduler.getJobKeys(matcher);  
        List<ScheduleJob> jobList = new ArrayList<ScheduleJob>();  
        for (JobKey jobKey : jobKeys) {  
            List<? extends Trigger> triggers = scheduler.getTriggersOfJob(jobKey);  
            for (Trigger trigger : triggers) {  
                ScheduleJob job = new ScheduleJob();  
                job.setJobName(jobKey.getName());  
                job.setJobGroup(jobKey.getGroup());  
                job.setDesc("触发器:" + trigger.getKey());  
                Trigger.TriggerState triggerState = scheduler.getTriggerState(trigger.getKey());  
                job.setJobStatus(triggerState.name());  
                if (trigger instanceof CronTrigger) {  
                    CronTrigger cronTrigger = (CronTrigger) trigger;  
                    String cronExpression = cronTrigger.getCronExpression();  
                    job.setCronExpression(cronExpression);  
                }  
                jobList.add(job);  
            }  
        }  
        return jobList;  
    }  
    
    /**
     * 获取所有正在运行的job 
     * @Title: getRunningJob  
     * @author flyhero(http://flyhero.top)
     * @date 2016年11月18日 上午10:35:49 
     * @param @return
     * @param @throws SchedulerException    
     * @return List<ScheduleJob>    返回类型 
     * @throws
     */
    public List<ScheduleJob> getRunningJob() throws SchedulerException {  
        Scheduler scheduler = sFactory.getScheduler();  
        List<JobExecutionContext> executingJobs = scheduler.getCurrentlyExecutingJobs();  
        List<ScheduleJob> jobList = new ArrayList<ScheduleJob>(executingJobs.size());  
        for (JobExecutionContext executingJob : executingJobs) {  
            ScheduleJob job = new ScheduleJob();  
            JobDetail jobDetail = executingJob.getJobDetail();  
            JobKey jobKey = jobDetail.getKey();  
            Trigger trigger = executingJob.getTrigger();  
            job.setJobName(jobKey.getName());  
            job.setJobGroup(jobKey.getGroup());  
            job.setDesc("触发器:" + trigger.getKey());  
            Trigger.TriggerState triggerState = scheduler.getTriggerState(trigger.getKey());  
            job.setJobStatus(triggerState.name());  
            if (trigger instanceof CronTrigger) {  
                CronTrigger cronTrigger = (CronTrigger) trigger;  
                String cronExpression = cronTrigger.getCronExpression();  
                job.setCronExpression(cronExpression);  
            }  
            jobList.add(job);  
        }  
        return jobList;  
    }  
    
    /**
     * 暂停一个job 
     * @Title: pauseJob  
     * @author flyhero(http://flyhero.top)
     * @date 2016年11月18日 上午10:38:26 
     * @param @param ScheduleJob1
     * @param @throws SchedulerException    
     * @return void    返回类型 
     * @throws
     */
    public void pauseJob(ScheduleJob job) throws SchedulerException {  
        Scheduler scheduler = sFactory.getScheduler();  
        JobKey jobKey = JobKey.jobKey(job.getJobName(), job.getJobGroup());  
        scheduler.pauseJob(jobKey);  
    }  
    
    
    /** 
     * 恢复一个job 
     *  
     * @param ScheduleJob1 
     * @throws SchedulerException 
     */  
    public void resumeJob(ScheduleJob job) throws SchedulerException {  
        Scheduler scheduler = sFactory.getScheduler();  
        JobKey jobKey = JobKey.jobKey(job.getJobName(), job.getJobGroup());  
        scheduler.resumeJob(jobKey);  
    }  
  
    /** 
     * 删除一个job 
     *  
     * @param ScheduleJob1 
     * @throws SchedulerException 
     */  
    public void deleteJob(ScheduleJob job) throws SchedulerException {  
        Scheduler scheduler = sFactory.getScheduler();  
        JobKey jobKey = JobKey.jobKey(job.getJobName(), job.getJobGroup());  
        scheduler.deleteJob(jobKey);  
    }  
  
    /** 
     * 立即执行job 
     *  
     * @param ScheduleJob1 
     * @throws SchedulerException 
     */  
    public void runAJobNow(ScheduleJob job) throws SchedulerException {  
        Scheduler scheduler = sFactory.getScheduler();  
        JobKey jobKey = JobKey.jobKey(job.getJobName(), job.getJobGroup());  
        scheduler.triggerJob(jobKey);  
    }  
  
    /** 
     * 更新job时间表达式 
     *  
     * @param ScheduleJob1 
     * @throws SchedulerException 
     */  
    public ScheduleJob updateJobCron(ScheduleJob job) throws SchedulerException {  
        Scheduler scheduler = sFactory.getScheduler();  
  
        TriggerKey triggerKey = TriggerKey.triggerKey(job.getJobName(), job.getJobGroup());  
  
        CronTrigger trigger = (CronTrigger) scheduler.getTrigger(triggerKey);  
  
        CronScheduleBuilder scheduleBuilder = CronScheduleBuilder.cronSchedule(job.getCronExpression());  
  
        trigger = trigger.getTriggerBuilder().withIdentity(triggerKey).withSchedule(scheduleBuilder).build();  
  
        scheduler.rescheduleJob(triggerKey, trigger);  
        // 得到任务下一次的计划执行时间  
/*        Date nextProcessTime = trigger.getNextFireTime();  
        ScheduleJob1.setNextProcessTime(nextProcessTime);  */
  
        return job;  
    }  
  
    
}
