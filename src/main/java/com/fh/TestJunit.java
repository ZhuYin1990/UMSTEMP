package com.fh;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.fh.dao.DaoSupport;  
  
/** 
 * Created by xiang.li on 2015/2/1. 
 * 
 */  
@RunWith(SpringJUnit4ClassRunner.class)  
@ContextConfiguration(locations = "classpath:spring/ApplicationContext-mvc.xml")  
public class TestJunit {  
  
    private static String UUID = "3";  
	@Resource(name = "daoSupport")
	private DaoSupport dao;
    private static Logger logger = LoggerFactory.getLogger(TestJunit.class);  
  
    @Test  
    public void test() throws Exception {  
    	   dao.findForList("UserMapper.getUserListPage", null);
    }  
  
}
    
    




