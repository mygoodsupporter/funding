package com.icia.funding.security;


import com.icia.funding.dto.MemberDTO;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@SuppressWarnings("serial")
public class MemberDetails implements UserDetails {
    private String id;
    private String password;
    private int enabled;

    private String email;
    private List<String> authorities = new ArrayList<>();

    public MemberDetails(MemberDTO member) {
        this.id = member.getM_id();
        this.password = member.getM_password();
        this.enabled = member.getEnabled();
        this.email = member.getM_email();
        this.authorities = member.getAuthorities();
    }

    public Collection<? extends GrantedAuthority> getAuthorities() {
        ArrayList<GrantedAuthority> authList = new ArrayList<GrantedAuthority>();

        for (String authority: authorities) {
            authList.add(new SimpleGrantedAuthority(authority));
        }

        authList.add(new SimpleGrantedAuthority("ROLE_USER"));
        return authList;
    }

    @Override
    public String getPassword() {
        return password;
    }

    @Override
    public String getUsername() {
        return id;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}
