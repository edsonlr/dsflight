package com.devsuperior.dsflight;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages="com.devsuperior.dsflight")
public class DsflightApplication {

	public static void main(String[] args) {
		SpringApplication.run(DsflightApplication.class, args);
	}

}
