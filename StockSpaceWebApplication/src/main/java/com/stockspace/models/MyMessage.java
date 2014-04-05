package com.stockspace.models;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class MyMessage implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4483398965015507662L;
	
	private String message;
	private String messageBy;
}
