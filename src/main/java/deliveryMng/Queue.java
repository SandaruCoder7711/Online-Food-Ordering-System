package deliveryMng;

public class Queue {
             private  int rear;
             private  int front;
             private int noOfItems;
             private int maxsize;
             private int arrayQueue[];
             
        public Queue(int size) {
        	this.maxsize = size;
        	this.rear = -1;
        	this.front = 0;
        	this.noOfItems = 0;
        	this.arrayQueue = new int [maxsize];
        	 }
        
        public void inseret (char item ) {
        	if (noOfItems == maxsize ) {
        		System.out.println("Que is full !");
        		
        	}else {
        		if(rear == maxsize -1) {
        			rear = -1;
        		}
        		arrayQueue[++rear] = item;
        		noOfItems++;
        	}
        
        
        }
        
       public int remove() {
    	    if (noOfItems == 0) {
    	    	System.out.println("Queue is empty");
    	    	
    	    }else {
    	    	int temp = arrayQueue[front++];
    	    	if (front == maxsize) {
    	    		front = 0 ;
    	    		
    	    	}
    	    	
    	    	noOfItems --;
    	    	return temp;
    	    }
    	    
    	    return 0;
       }
}
