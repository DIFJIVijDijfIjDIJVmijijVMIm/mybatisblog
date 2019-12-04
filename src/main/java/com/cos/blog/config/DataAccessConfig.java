package com.cos.blog.config;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

//configuration, controller, restcontroller, bean, component
//service, repository

//이 어노테이션은 시작할때 무조건 메모리에 이 클래스르 띄우게 되있나봐 
//이 repository는 jsp의 dao와 같은 역할을 한다.
@Configuration	
@MapperScan(basePackages = "com.cos.blog.repository")	
public class DataAccessConfig {

    @Bean
    public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception {

        SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();	
        //이걸 쓰게 되면 conn, pstmt, rs이런거 계속 반복해서 안해도 된다.
        //얘가 xml 파일을 로드해 옴. 이 xml은 sql문을 가지고 있다.
        //이 xml파일은 테이블 마다 하나씩 존재해야한다.
        //이 SqlSessionFactory한테는 xml파일이 어디에 존재하는지 알려 주면 된다.

        sessionFactory.setDataSource(dataSource);
        sessionFactory.setMapperLocations(
        		new PathMatchingResourcePatternResolver().getResources("classpath:mapper/*.xml"));	
        		//니 sql 쿼리문 저장해 놓은데가 어디고?라고 묻는 중
        		//classpath는 기본적으로 src.main.resources를 가리키고 있다.
        
        return sessionFactory.getObject();
    }

    @Bean
    public SqlSessionTemplate sqlSessionTemplate(SqlSessionFactory sqlSessionFactory) {
        return new SqlSessionTemplate(sqlSessionFactory);
    }
}

