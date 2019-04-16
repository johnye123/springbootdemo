package com.springboot.demo.utils;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import java.util.Date;
import java.text.SimpleDateFormat;

@Component
public class Jobs {
    /* 1分钟执行一次 60 * 1000*/
    public final static long ONE_MINUTE = 60 * 1000;

    @Scheduled(fixedDelay = ONE_MINUTE)
    public void fixedDelayJob() {
        System.out.println(new SimpleDateFormat("yyyy/MM/dd HH:mm:ss").format(new Date()) + " >>fixedDelay定时任务执行....");
    }

    @Scheduled(fixedRate = ONE_MINUTE)
    public void fixedRateJob() {
        System.out.println(new SimpleDateFormat("yyyy/MM/dd HH:mm:ss").format(new Date()) + " >>fixedRate定时任务执行....");
    }

    @Scheduled(cron = "0 15 3 * * ?")
    public void cronJob() {
        System.out.println(new SimpleDateFormat("yyyy/MM/dd HH:mm:ss").format(new Date()) + " >>cron执行....");
    }
}
