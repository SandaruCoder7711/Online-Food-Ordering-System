package deliveryMng;

import java.util.Scanner;

public class main {
	public static void main(String[] args) {

				int arrSize = 5;

				Queue queueArr = new Queue(arrSize);
				satack stackArr = new satack(arrSize);

				Scanner sc = new Scanner(System.in);

				for (int i = 0; i < arrSize; i++) {

					System.out.print("Enter charater : ");
					char c = sc.next().charAt(0);
					queueArr.inseret(c);
				}

				for (int i = 0; i < arrSize; i++) {
					
//					System.out.println(queueArr.remove());
					stackArr.push(queueArr.remove());
					
				}
				for (int i = 0; i < arrSize; i++) {
					
//					System.out.println(stackArr.pop());
					queueArr.inseret(stackArr.);

				}
				for (int i = 0; i < arrSize; i++) {

					System.out.println(queueArr.remove());

				}

			}

		}
