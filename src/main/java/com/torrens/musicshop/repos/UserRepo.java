package com.torrens.musicshop.repos;

import com.torrens.musicshop.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepo extends JpaRepository<User,Long> {
    User findByUsername(String username);

    User findByActivationCode(String code);
}
