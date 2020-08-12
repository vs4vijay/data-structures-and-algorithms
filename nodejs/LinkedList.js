const Node = require('./Node');

class LinkedList {

  constructor() {
    this.head = null;
  }

  add(data) {
    const node = new Node(data);

    if(this.head == null) {
      this.head = node;
    } else {
      let temp = this.head;
      while(temp.next != null) {
        temp = temp.next;
      }
      temp.next = node;
    }
  }

  // Removes from last
  remove() {
    let temp = this.head;
    let prev = temp;
    while(temp.next != null) {
      prev = temp;
      temp = temp.next;
    }

    prev.next = null;
  }

  // Remove node from index
  removeIndex(index) {
    let temp = this.head;
    let prev = temp;

    for(let i=0; i<index; i++) {
      prev = temp;
      temp = temp.next;
    }

    prev.next = temp.next;
  }

  print() {
    let temp = this.head;
    process.stdout.write("Head -> ")
    while(temp.next != null) {
      process.stdout.write(`${temp.data} -> `);
      temp = temp.next;
    }
    console.log(temp.data);
    console.log("--------");
  }

}

module.exports = LinkedList;