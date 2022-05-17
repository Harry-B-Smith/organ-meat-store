package com.organmeatstore.aspect;

import java.util.logging.Logger;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class OMSLoggingAspect {

	// setup logger
	private Logger myLogger = Logger.getLogger(getClass().getName());
	
	//setup pointcut declarations
	@Pointcut("execution(* com.organmeatstore.controller.*.*(..))")
	private void forControllerPackage() {
	}
	
	// do same for service and dao
	@Pointcut("execution(* com.organmeatstore.service.*.*(..))")
	private void forServicePackage() {
	}
	
	@Pointcut("execution(* com.organmeatstore.dao.*.*(..))")
	private void forDaoPackage() {
	}
	
	@Pointcut("forControllerPackage() || forServicePackage() || forDaoPackage()")
	private void forAppFlow() {
		
	}
	//add @Before advice
	@Before("forAppFlow()")
	public void before(JoinPoint theJoinPoint) {
		//display method we are calling
		String theMethod = theJoinPoint.getSignature().toShortString();
		myLogger.info("=====>> in @Before: calling method: " + theMethod);
		// display the arguments to the method
		
		
		// get the argments
		Object[] args = theJoinPoint.getArgs();
		
		//loop thru and display args
		for (Object tempArg : args) {
			myLogger.info("=====>> argument: " + tempArg);
		}
		
	}
	// add @AfterReturning Advice
	
	@AfterReturning(
		pointcut="forAppFlow()",
		returning="theResult"
		)
	public void afterReturning(JoinPoint theJoinPoint, Object theResult) {
		
		// display the method we are returning from
		String theMethod = theJoinPoint.getSignature().toShortString();
		myLogger.info("=====>> in @AfterReturning: from method: " + theMethod);
		
		//display the data returned
		myLogger.info("=====>> result: " + theResult);
	}

}
