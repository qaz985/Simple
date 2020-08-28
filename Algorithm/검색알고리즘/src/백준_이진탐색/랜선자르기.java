package 백준_이진탐색;

import java.util.Arrays;
import java.util.Scanner;

public class 랜선자르기 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		
		int n = sc.nextInt();
		int[] a = new int[n];
	
		int m = sc.nextInt();
		
		for (int i = 0; i < a.length; i++) {
			a[i] = sc.nextInt();
		}
		Arrays.sort(a);
		
		System.out.println(search(a, a[a.length - 1], m));
	}
	
	public static long search(int[] a,long r, int m) {
		
		long l = 1;
		
		while (l <= r) {
			int sum = 0;
			long mid = (l + r) / 2;
			
			for (int i = 0; i < a.length; i++) {
				if (a[i] / mid > 0) {
					sum += a[i] / mid;
				}
			}
			if (sum >= m) {
				l = mid + 1;
			}
			else {
				r = mid - 1;
			}
		}
		
		return r;
	}
}
