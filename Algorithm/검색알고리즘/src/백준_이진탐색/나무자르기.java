package 백준_이진탐색;

import java.util.Arrays;
import java.util.Scanner;

public class 나무자르기 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		
		int n = sc.nextInt();
		int[] a = new int[n];
	
		
		int m = sc.nextInt();
		
		
		for (int i = 0; i < a.length; i++) {
			a[i] = sc.nextInt();
		}
		Arrays.sort(a);
		System.out.println(search(a, 0, a[a.length - 1], m));
		
	}
	public static long search(int[] a, int l, int r, int m) {
		
		while (l <= r) {
			
			int mid = (l + r) / 2;
			
			if (slice(a, mid, m)) {
				l = mid + 1;
			}
			else {
				r = mid - 1;
			}
		}
		
		return r;
	}
	
	public static boolean slice(int[] a, int mid, int m) {
		
		long sum = 0;
		
		for (int i : a) {
			sum += (i - mid) > 0 ? (i - mid) : 0;
		}
		
		if (sum >= m) {
			return true;
		}
		
		return false;
	}
}
