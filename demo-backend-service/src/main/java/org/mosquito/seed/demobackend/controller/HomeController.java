package org.mosquito.seed.demobackend.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/app")
public class HomeController {

    @PreAuthorize("hasRole('admin')")
    @GetMapping(value = "/admin")
    public String admin() {
        return "admin!";
    }

    @GetMapping(value = "/user")
    public String user() {
        return "user!";
    }

    @RequestMapping(value = "/guest")
    public String guest() {
        return "guest!";
    }

    @GetMapping("/me")
    public Authentication me(Authentication auth) {
        return auth;
    }
}