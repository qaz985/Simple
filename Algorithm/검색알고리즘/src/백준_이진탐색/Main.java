package 백준_이진탐색;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.StringTokenizer;

public class Main {

	public static void main(String[] args) throws NumberFormatException, IOException {

		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		int n = Integer.parseInt(br.readLine());
		
		int[] a = new int[n];
		StringTokenizer tokenizer = new StringTokenizer(br.readLine());
		
		for (int i = 0; i < n; i++) {
			a[i] = Integer.parseInt(tokenizer.nextToken());
		}
		Arrays.sort(a);
		
		int m = Integer.parseInt(br.readLine());
		
		int l = n;
		int r = a[a.length - 1];
		int mid = 0;
		
		while (l <= r) {
			int sum = 0;
			mid = (l + r) / 2;
			
			for (int i = 0; i < a.length; i++) {
				if (mid > a[i]) {
					sum += a[i];
				}
				else {
					sum += mid;
				}
			}
			
			if (sum <= m) {
				l = mid + 1;
			}
			else {
				r = mid - 1;
			}
		}
		
		System.out.println(r);
		
	}
}
