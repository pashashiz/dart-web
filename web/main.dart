// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';

void main() {
  initToDoList();
}

void initToDoList() {
  InputElement input = querySelector('#to-do-input');
  input.onChange.listen((event) {
    LIElement newToDo = new LIElement();
    newToDo.text = input.value;
    input.value = "";
    UListElement toDoList = querySelector('#to-do-list');
    toDoList.children.add(newToDo);
  });
}
