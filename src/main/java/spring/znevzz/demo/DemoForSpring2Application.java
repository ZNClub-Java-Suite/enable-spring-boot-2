package spring.znevzz.demo;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;


@SpringBootApplication
public class DemoForSpring2Application {

	public static void main(String[] args) {
		SpringApplication.run(DemoForSpring2Application.class, args);
	}

}


@SuppressWarnings("unchecked")
@RestController
class DemoController {

	@Value("${default.hello.name}")
	private String defaultName;

	@GetMapping
	public Map sayHi(@RequestParam("name") String name){
		return new HashMap(){{put("message",
				"Hello "
				+ (name.equals("")? defaultName : name));}};
	}

}