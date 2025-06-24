package deliveryMng;

public class satack {
    private int top;
    private int maxSize;
    private int[] arrayStack;

    // Constructor to initialize the stack
    public satack(int size) {
        this.top = -1;
        this.maxSize = size;
        this.arrayStack = new int[maxSize];
    }

    // Push method to insert an item into the stack
    public void push(int item) {
        if (isFull()) {
            System.out.println("Stack is full!");
        } else {
            arrayStack[++top] = item; // Increment top and add item
        }
    }

    // Pop method to remove and return the top item
    public int pop() {
        if (isEmpty()) {
            System.out.println("Stack is empty!");
            return -1; // Return -1 if stack is empty
        } else {
            return arrayStack[top--]; // Return top element and decrement top
        }
    }

    // Method to check if the stack is full
    public boolean isFull() {
        return top == maxSize - 1;
    }

    // Method to check if the stack is empty
    public boolean isEmpty() {
        return top == -1;
    }
}

