package 백준_이진탐색;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.StringTokenizer;

public class 숫자카드2 {

	public static void main(String[] args) throws NumberFormatException, IOException {

		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		int n = Integer.parseInt(br.readLine());
		
		int[] a = new int[20000001];
		StringTokenizer tokenizer = new StringTokenizer(br.readLine());
		StringBuilder sb = new StringBuilder();
		
		for (int i = 0; i < n; i++) {
			a[Integer.parseInt(tokenizer.nextToken()) + 10000000]++;
		}
		
		n = Integer.parseInt(br.readLine());
		
		tokenizer = new StringTokenizer(br.readLine());
		
		
		for (int i = 0; i < n; i++) {
			sb.append(a[Integer.parseInt(tokenizer.nextToken()) + 10000000] + " ");
		}
		System.out.println(sb.toString());
		
	}
}
