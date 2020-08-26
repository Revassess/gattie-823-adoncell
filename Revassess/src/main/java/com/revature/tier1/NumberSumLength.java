package com.revature.tier1;

import java.lang.Math;

public class NumberSumLength {

	public static boolean checkNumberPowerLength(long num) {
		String numString = Long.toString(num);
		char[] charArray = numString.toCharArray();
		int[] arr = new int[charArray.length];
		for (int i = 0; i < charArray.length; i++) {
			arr[i] = Character.getNumericValue(charArray[i]);
		}
		
		int sum = 0;
		for (int i = 0; i < arr.length; i++) {
			int raised = (int) Math.pow(arr[i], arr.length);
			sum += raised;
		}
		
		if (sum == num) {
			return true;
		}
		
		return false;
	}
}
