package mta.ltnc.BookStore.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import javax.sql.DataSource;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Autowired
    DataSource dataSource;

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.jdbcAuthentication()
                .dataSource(dataSource)
                .usersByUsernameQuery("select `user_name` as `username`, `password`, `status` as `enable` from `user` where `user_name`= ?")
                .authoritiesByUsernameQuery("select `user`.`user_name` as `username`, `user_group`.`name` as `role` from `user_group` join `user` on `user`.`user_groupid` = `user_group`.`id` where `user_name` = ?")
                .passwordEncoder(passwordEncoder());
    }

    @Override
    protected void configure(final HttpSecurity http) throws Exception {
        http.authorizeRequests().antMatchers("/image/**").permitAll().antMatchers("/").permitAll()
                .antMatchers("/admin/**").hasAuthority("ADMIN")
                .antMatchers("/register").permitAll()
            //  .antMatchers("/admin/").permitAll()
                .antMatchers("/employee/sale/**").hasAuthority("SALE")
                .antMatchers("/employee/warehouse/**").hasAuthority("WAREHOUSE")
                .antMatchers("/checker").hasAuthority("CHECKER")
                .antMatchers("/profile", "/history", "/password").authenticated()
                .and()
                .formLogin().loginPage("/login").defaultSuccessUrl("/admin/dashboard").failureUrl("/login?error=true")
                .permitAll().and()
                .logout().logoutSuccessUrl("/login").invalidateHttpSession(true).permitAll().and()
                .exceptionHandling().accessDeniedPage("/403")
                .and().csrf().disable();
    }

    @Override
    public void configure(WebSecurity web) {
        super.configure(web);
//        web.ignoring().antMatchers("/admin/books");
    }

}
