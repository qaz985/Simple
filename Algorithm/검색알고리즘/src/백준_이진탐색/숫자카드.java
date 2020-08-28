package 백준_이진탐색;

import java.util.Arrays;
import java.util.Scanner;

public class 숫자카드 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		
		int n = sc.nextInt();
		int[] a = new int[n];
	
		for (int i = 0; i < a.length; i++) {
			a[i] = sc.nextInt();
		}
		Arrays.sort(a);
		
		int m = sc.nextInt();
		int[] b = new int[m];
		
		for (int i = 0; i < b.length; i++) {
			b[i] = sc.nextInt();
		}
		
		for (int i = 0; i < b.length; i++) {
			if(Arrays.binarySearch(a, b[i]) < 0)	{
				System.out.println(0);
			}
			else {
				System.out.println(1);
			}
		}
	}
}
