public class LinkedListDeque<PlaceholderType > {

  private class NodeList {
    // LinkedListDeque is going to be a series of NodeLists
    public NodeList previous;
    public PlaceholderType item;
    public NodeList next;

    public NodeList(NodeList p, PlaceholderType i, NodeList n) {
      previous = p;
      item     = i;
      next     = n;
    }
  }

  private NodeList sentinel;
  private int size;

  public LinkedListDeque() {
    // sentinel = new NodeList(sentinel, null, sentinel); // I guess I can't do this
    sentinel = new NodeList(null, null, null);
    sentinel.next = sentinel;
    sentinel.previous = sentinel;
    // does it matter whether I do it like above, or just all in the instantiation?
    size     = 0;
  }

  public void addFirst(PlaceholderType item) {
    sentinel.next = new NodeList(sentinel, item, sentinel.next);
    sentinel.next.next.previous = sentinel.next;
    size++;
  }

  public void removeFirst() {
    sentinel.next = sentinel.next.next;
    sentinel.next.next.previous = sentinel;
  }

  public void addLast(PlaceholderType item) {
    // so if I were to implement this with a standard linked list,
    // I'd have to iterate through all the elements until I get the cell that 
    // ends with null, and then add it there, which is inefficient
    // which is why I have to use the double ended queue structure
    // sentinel.previous = new NodeList(sentinel.previous, item, sentinel);
    // sentinel.previous.next = new NodeList(sentinel.previous, item, sentinel);
    sentinel.previous = new NodeList(sentinel.previous, item, sentinel);
    sentinel.previous.previous.next = sentinel.previous;
    size++;
  }

  public void removeLast() {
    sentinel.previous = sentinel.previous.previous;
    sentinel.previous.previous.next = sentinel;
  }

  public boolean isEmpty() {
    if (sentinel.next.item == null) {
      // isEmpty = true
      return true;
    }
    // isEmpty = false
    return false;
  }

  public void printDeque() {
    for (int i = 0; i < size; i++) {
      System.out.println(Integer.toString(i));
      System.out.println(this.get(i));
    }
  }

  public PlaceholderType get(int index) {
    NodeList returnValue = sentinel.next;
    while (index > 0) {
      returnValue = returnValue.next;
      index--;
    }
    return returnValue.item;
  }

  public int size() {
    return size;
  }

  // public PlaceholderType getRecursive(int index) {
  //   return 0;
  // }
}
