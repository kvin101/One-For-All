import java.util.ArrayList;
import java.util.LinkedList;

class Pair<K, V> {

  private K key;
  private V value;

  Pair(K key, V value) {
    this.key = key;
    this.value = value;
  }

  public K getKey() {
    return key;
  }

  public V getValue() {
    return value;
  }

  public void setValue(V value) {
    this.value = value;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || getClass() != o.getClass()) return false;
    return ((Pair<?, ?>) o).getKey().equals(this.getKey());
  }
}

class Node<E> {

  private E data;
  private Node<E> prev;
  private Node<E> next;

  public Node(E data) {
    this.data = data;
  }

  public E getData() {
    return data;
  }

  public void setData(E data) {
    this.data = data;
  }

  public Node<E> getPrev() {
    return prev;
  }

  public Node<E> getNext() {
    return next;
  }

  public void setPrev(Node<E> prev) {
    this.prev = prev;
  }

  public void setNext(Node<E> next) {
    this.next = next;
  }
}

class CustomLinkedList<E> {

  private Node<E> head;
  private Node<E> tail;
  private int size;

  public CustomLinkedList() {
    head = new Node<>(null);
    tail = new Node<>(null);
    head.setNext(tail);
    tail.setPrev(head);
  }

  public void addFirst(E e) {
    Node<E> newNode = new Node<>(e);
    newNode.setPrev(head);
    newNode.setNext(head.getNext());
    head.getNext().setPrev(newNode);
    head.setNext(newNode);
  }

  public void addLast(E e) {
    Node<E> newNode = new Node<>(e);
    newNode.setPrev(tail.getPrev());
    newNode.setNext(tail);
    tail.getPrev().setNext(newNode);
    tail.setPrev(newNode);
  }
  public void deleteNode(Node<E> node) {
    node.getPrev().setNext(node.getNext());
    node.getNext().setPrev(node.getPrev());
    node.setNext(null);
    node.setPrev(null);
  }
  public Node<E> getFirst() {
    return head.getNext();
  }
}

public class CustomHashMap<K, V> {

  private ArrayList<CustomLinkedList<Pair>> baseArray;
  private int capacity;
  private int size = 10;

  public CustomHashMap(int capacity) {
    this.capacity = capacity;
    baseArray = new ArrayList<>();
  }

  public void put(K key, V value) {
    int hash = key.hashCode();
    if (baseArray.get(hash) == null) {
      baseArray.add(new CustomLinkedList<>());
    }
    Node<Pair> node = baseArray.get(hash).getFirst();
    while(node != null) {
      if(node.getData().equals(key)) {
        node.getData().setValue(value);
        break;
      }
      else if(node.getNext()==null) {

      }
      node = node.getNext();
    }
  }

  public int getHash(K key) {
    return key.hashCode() % size;
  }
}
