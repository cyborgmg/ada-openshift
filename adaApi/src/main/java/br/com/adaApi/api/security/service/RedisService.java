package br.com.adaApi.api.security.service;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import redis.clients.jedis.Jedis;

/**
 *
 * @author Narayan <me@ngopal.com.np>
 */
@Component
public class RedisService {
	
	@Value("${redis.host}")
	private String host;
	
	@Value("${redis.port}")
	private Integer port;
	
	@Value("${redis.dbindex}")
	private int dbindex;
	
	@Value("${redis.pass}")
	private String pass;

	private Jedis jedis;
	
	@PostConstruct
	public void init() {
		jedis = new Jedis(host,port); 
		jedis.auth(pass);
		jedis.select(dbindex);
	}

	public Jedis getJedis() {
		return jedis;
	}

}
