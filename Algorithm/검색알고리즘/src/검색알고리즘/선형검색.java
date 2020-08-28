package 검색알고리즘;

import java.util.Scanner;

public class 선형검색 {

	
	//배열 a 앞쪽 n개의 요소에서 key와 같은 요소를 선형 검색
	static int seqSearch(int[] a, int n, int key)	{
		
		for (int i = 0; i < n; i++) {
			if(a[i] == key)	{
				return i;
			}
		}
		return -1;
	}
	
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		// 배열 길이 입력
		System.out.println("길이 : ");
		int num = sc.nextInt();
		int[] x = new int[num];	// 길이가 num인 배열
		
		// 배열 값 입력
		for (int i = 0; i < num; i++) {
			System.out.println("x[" + i + "] : ");
			x[i] = sc.nextInt();
		}
		
		// 검색 값 입력
		System.out.println("검색할 값 : ");
		int key = sc.nextInt();
		
		// 선형 검색 메소드 실행
		int idx = seqSearch(x, num, key);
		
		
		// 결과 출력
		if(idx == -1) {
			System.out.println("검색한 값이 없습니다.");
		}
		else {
			System.out.println(key + "은(는) x[" + idx + "]에 있습니다.");
		}
	}
}
