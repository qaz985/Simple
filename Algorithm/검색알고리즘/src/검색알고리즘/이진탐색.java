package �˻��˰���;

import java.util.Arrays;
import java.util.Scanner;

public class ����Ž�� {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		// �迭 ���� �Է�
		System.out.println("���� : ");
		int num = sc.nextInt();
		int[] x = new int[num];	// ���̰� num�� �迭
		
		System.out.println("������������ �Է��ϼ���.");
		System.out.println("x[0] : ");
		x[0] = sc.nextInt();

		// �迭 �� �Է�
		for (int i = 1; i < num; i++) {
			do {
				System.out.println("x[" + i + "] : ");
				x[i] = sc.nextInt();
			} while (x[i] < x[i - 1]);
		}
		
		// �˻� �� �Է�
		System.out.println("�˻��� �� : ");
		int key = sc.nextInt();
		
		// ���� �˻� �޼ҵ� ����
		int idx = Arrays.binarySearch(x,  key);
		
		
		// ��� ���
		if(idx < 0) {
			System.out.println("�˻��� ���� �����ϴ�.");
		}
		else {
			System.out.println(key + "��(��) x[" + idx + "]�� �ֽ��ϴ�.");
		}
	}
}
