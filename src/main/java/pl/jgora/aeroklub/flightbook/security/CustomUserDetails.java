package pl.jgora.aeroklub.flightbook.security;

import lombok.Value;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
@Value
public class CustomUserDetails implements UserDetails {
    String username;
    String password;
    Collection<? extends GrantedAuthority> authorieties;


    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return authorieties;
    }

    @Override
    public String getPassword() {
        return password;
    }

    @Override
    public String getUsername() {
        return username;
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
