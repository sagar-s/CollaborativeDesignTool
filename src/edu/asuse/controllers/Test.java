package edu.asuse.controllers;

import java.sql.Timestamp;

public class Test {
	public static void main(String[] args) {
		Timestamp current = new Timestamp(System.currentTimeMillis());
		Timestamp future = new Timestamp(current.getTime()+120000);
		System.out.println(current);
		System.out.println(future);
	}
}
