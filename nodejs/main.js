#!/usr/bin/env node

const LinkedList = require('./LinkedList');

const ll = new LinkedList();

ll.add(11);
ll.add(22);
ll.add(33);
ll.add(44);
ll.add(55);

ll.print();

ll.removeIndex(2);

ll.print();