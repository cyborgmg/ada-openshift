package br.com.adaApi.api.security.service;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Component;

import redis.clients.jedis.Jedis;

@Component
public class RedisService {
	
	private Jedis jedis;
	
	@PostConstruct
	public void ini() {
		
		jedis = new Jedis(System.getenv("REDIS_HOST"), Integer.parseInt(System.getenv("REDIS_PORT")));
		jedis.auth(System.getenv("REDIS_PASS"));
		jedis.select(0);
	}

	public Jedis getJedis() {
		return jedis;
	}

}
