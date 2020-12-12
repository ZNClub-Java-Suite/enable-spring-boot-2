package spring.znevzz.demo;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.TestConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.test.context.ContextConfiguration;

@ContextConfiguration(locations = "spring.znevzz.demo")
@SpringBootTest(
		classes = DemoForSpring2Application.class,
		webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class DemoForSpring2ApplicationTests {

	@Test
	public void contextLoads() {
	}

	@Configuration
	static class TestConfig {

		@Bean
		public DemoController controller(){
			return new DemoController();
		}
	}

}
