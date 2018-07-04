package org.mosquito.seed.demobackend.config;

import com.mosquito.framework.security.feign.PassHeadersFeignRequestInterceptor;
import feign.RequestInterceptor;
import org.mosquito.seed.common.security.RestSecurityConfig;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

/**
 * MainConfig
 *
 * @author 01372461
 */
@Configuration
@Import({RestSecurityConfig.class, ResourceConfig.class})
public class MainConfig {

    // feign config
    @Bean
    public RequestInterceptor passHeadersRequestInterceptor() {
        return new PassHeadersFeignRequestInterceptor();
    }

}
