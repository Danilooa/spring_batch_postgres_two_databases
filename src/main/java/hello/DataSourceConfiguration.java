package hello;

import org.apache.commons.dbcp.BasicDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;

@Configuration
@PropertySource("file:./batch.properties")
public class DataSourceConfiguration {

	@Autowired
	public Environment env;

	@Bean
	@Primary
	public DataSource springBatchDataSource() {
		BasicDataSource dataSource = new BasicDataSource();
		dataSource.setUrl(env.getRequiredProperty("springbatch.dataSource.url"));
		dataSource.setDriverClassName(env.getRequiredProperty("springbatch.dataSource.driverClassName"));
		dataSource.setUsername(env.getProperty("springbatch.dataSource.username"));
		dataSource.setPassword(env.getProperty("springbatch.dataSource.password"));
		return dataSource;
	}

	@Bean
	public DataSource applicationDataSource() {
		BasicDataSource dataSource = new BasicDataSource();
		dataSource.setUrl(env.getRequiredProperty("application.dataSource.url"));
		dataSource.setDriverClassName(env.getRequiredProperty("application.dataSource.driverClassName"));
		dataSource.setUsername(env.getProperty("application.dataSource.username"));
		dataSource.setPassword(env.getProperty("application.dataSource.password"));
		return dataSource;
	}

	@Bean
	public JdbcTemplate applicationJdbcTemplate(@Qualifier("applicationDataSource") DataSource applicationDataSource){
		JdbcTemplate jdbcTemplate = new JdbcTemplate(applicationDataSource);
		return jdbcTemplate;
	}
}
