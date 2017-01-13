/**
 * 
 */
package com.srikanth.springboot.rest;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author srikanthchebrolu
 *
 */
@RestController
@RequestMapping(value = "/")
public class UserController {

	//@RequestMapping(value = "/sri")
	public String UserName() {
		return "Srikanth";
	}
	
}
