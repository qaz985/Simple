package 검색알고리즘;

import java.util.Arrays;
import java.util.Scanner;

public class 이진탐색 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		// 배열 길이 입력
		System.out.println("길이 : ");
		int num = sc.nextInt();
		int[] x = new int[num];	// 길이가 num인 배열
		
		System.out.println("오름차순으로 입력하세요.");
		System.out.println("x[0] : ");
		x[0] = sc.nextInt();

		// 배열 값 입력
		for (int i = 1; i < num; i++) {
			do {
				System.out.println("x[" + i + "] : ");
				x[i] = sc.nextInt();
			} while (x[i] < x[i - 1]);
		}
		
		// 검색 값 입력
		System.out.println("검색할 값 : ");
		int key = sc.nextInt();
		
		// 선형 검색 메소드 실행
		int idx = Arrays.binarySearch(x,  key);
		
		
		// 결과 출력
		if(idx < 0) {
			System.out.println("검색한 값이 없습니다.");
		}
		else {
			System.out.println(key + "은(는) x[" + idx + "]에 있습니다.");
		}
	}
}
