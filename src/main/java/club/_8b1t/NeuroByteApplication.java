package club._8b1t;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("club._8b1t.mapper")
public class NeuroByteApplication {

    public static void main(String[] args) {
        SpringApplication.run(NeuroByteApplication.class, args);
    }

}
