package �˻��˰���;

import java.util.Scanner;

public class �����˻� {

	
	//�迭 a ���� n���� ��ҿ��� key�� ���� ��Ҹ� ���� �˻�
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
		
		// �迭 ���� �Է�
		System.out.println("���� : ");
		int num = sc.nextInt();
		int[] x = new int[num];	// ���̰� num�� �迭
		
		// �迭 �� �Է�
		for (int i = 0; i < num; i++) {
			System.out.println("x[" + i + "] : ");
			x[i] = sc.nextInt();
		}
		
		// �˻� �� �Է�
		System.out.println("�˻��� �� : ");
		int key = sc.nextInt();
		
		// ���� �˻� �޼ҵ� ����
		int idx = seqSearch(x, num, key);
		
		
		// ��� ���
		if(idx == -1) {
			System.out.println("�˻��� ���� �����ϴ�.");
		}
		else {
			System.out.println(key + "��(��) x[" + idx + "]�� �ֽ��ϴ�.");
		}
	}
}
