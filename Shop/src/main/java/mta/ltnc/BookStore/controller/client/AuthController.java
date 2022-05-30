package mta.ltnc.BookStore.controller.client;

import mta.ltnc.BookStore.entity.User;
import mta.ltnc.BookStore.repositories.UserGroupRepository;
import mta.ltnc.BookStore.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.sql.Timestamp;


@Controller
public class AuthController {

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private  UserRepository userRepository;

    @Autowired
    private UserGroupRepository userGroupRepository;
    @GetMapping("/register")
    public String registerCustomer() {
        User user = new User();

        user.setUserName("admin");
        user.setPassword(passwordEncoder.encode("admin"));
//        user.setPassword("123");
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        user.setCreatedDate(timestamp);
        user.setStatus(true);
        user.setEmail("huy441998@gmail.com");
        user.setName("Hoang Quoc Huy");
        user.setPhone("123456789");
        user.setAddress("Hoang Quoc Viet");
        user.setUserGroup(userGroupRepository.findById(1l).get());
        System.out.print(user);
        userRepository.save(user);
        return "index3";
    }
}
