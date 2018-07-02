package org.mosquito.seed.edge.config;

import com.mosquito.framework.security.zuul.OAuth2HeaderFilter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * ZuulConfig
 *
 * @author 01372461
 */
@Configuration
public class ZuulConfig {

    @Bean
    public OAuth2HeaderFilter oauth2HeaderFilter() {
        return new OAuth2HeaderFilter();
    }

}
