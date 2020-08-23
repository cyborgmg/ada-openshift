package br.com.adaApi.api.security.jwt;

import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

import br.com.adaApi.api.utils.Utils;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

@Component
public class JwtTokenUtil implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Autowired
    private HttpSession session;
	
	static final String CLAIM_KEY_USERNAME = "sub";
	static final String CLAIM_KEY_CREATED = "created";
	static final String CLAIM_KEY_EXPIRA = "expi";
	
	@Value("${jwt.secret}")
	private String secret;
	
	@Value("${jwt.expiration}")
	private Long expiration;
	
	public String getUsernameFromToken(String token) {
		String username;
		try {
			final Claims claims = getClaimsFromToken(token);
			username = claims.getSubject();
		}catch (Exception e) {
			username = null;
		}
		return username;
	}
	
	public Date getExpirationDateFromToken(String token) {
		Date expiration;
		try {
			final Claims claims = getClaimsFromToken(token);
			expiration = claims.getExpiration();
		}catch (Exception e) {
			expiration = null;
		}
		return expiration;
	}
	
	private Claims getClaimsFromToken(String token) {
		Claims claims=null;
		
		if(token!=null) {
			try {
				
				
				Map<String, Object>  claimsRedis = Utils.deserializeJson((String)this.session.getAttribute(token),HashMap.class);
				
				String sub = (String) claimsRedis.get(CLAIM_KEY_USERNAME);
				Long exp = (Long) claimsRedis.get(CLAIM_KEY_EXPIRA);
				
				claims = Jwts.parser()
						 .setSigningKey(secret)
						 .parseClaimsJws(token)
						 .getBody()
						 .setSubject(sub)
						 .setExpiration( new Date( exp ) );
				
			} catch (Exception e) {
				claims = null;
			}
		}
		
		return claims;
	}
	
	private Boolean isTokenExpired(String token) {
		final Date expiration = getExpirationDateFromToken(token);
		return expiration.before(new Date());
	}
	
	public String generateToken(UserDetails userDetails) {
		
		Map<String, Object> claims = new HashMap<>();
		
		claims.put(CLAIM_KEY_USERNAME, userDetails.getUsername());
		
		claims.put(CLAIM_KEY_CREATED, new Date());
		
		Calendar expirationDate = Calendar.getInstance(); 
		expirationDate.add(Calendar.DAY_OF_MONTH, expiration.intValue());
		claims.put(CLAIM_KEY_EXPIRA, expirationDate.getTime());
		
		return doGenerateToken(claims);
		
	}

	private String doGenerateToken(Map<String, Object> claims) {
		
		String token = Jwts.builder()
				   .setClaims(claims)
				   .setExpiration((Date) claims.get(CLAIM_KEY_EXPIRA))
				   .signWith(SignatureAlgorithm.HS512, secret)
				   .compact();
		
		try {
			
			this.session.setAttribute(token, Utils.serializeToJson(claims));
			
		} catch (Exception e) {
			e.printStackTrace();
		}	
		
		
		return token;
	}
	
	public Boolean canTokenBeRefreshed(String token) {
		return (!isTokenExpired(token));
	}
	
	public String refreshToken(String token) {
		String refreshToken;
		
		try {
			final Claims claims = getClaimsFromToken(token);
			claims.put(CLAIM_KEY_CREATED, new Date());
			refreshToken = doGenerateToken(claims);
		} catch (Exception e) {
			refreshToken=null;
		}
		return refreshToken;
	}
	
	public Boolean validateToken(String token, UserDetails userDetails) {
		JwtUser user = (JwtUser) userDetails;
		final String username = getUsernameFromToken(token);
		return ( username.equals(user.getUsername()) 
						&& !isTokenExpired(token));
	}
	
}
