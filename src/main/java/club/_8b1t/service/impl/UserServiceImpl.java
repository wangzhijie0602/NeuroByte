package club._8b1t.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import club._8b1t.domain.User;
import club._8b1t.service.UserService;
import club._8b1t.mapper.UserMapper;
import org.springframework.stereotype.Service;

/**
* @author root
* @description 针对表【user(用户信息表)】的数据库操作Service实现
* @createDate 2025-06-27 14:30:09
*/
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User>
    implements UserService{

}




