void main() {
  // while ( condition ) {    }
  // if ( condition ) {  }

  double number = 1.4;
  int realNumber = number.round();
  print(realNumber);

  String strNumber = number.toString();

  

  if (5 < 10) {
    print('if code');
  } else {
    print('else code');
  }

  String orderState = "onWay";

  if (orderState == "pending") {
    print(orderState);
  } else if (orderState == "onWay") {
    print(orderState);
  } else if (orderState == "finished") {
    print(orderState);
  } else if (orderState == "returned") {
    print(orderState);
  } else if (orderState == "refused") {
    print(orderState);
  } else {
    print('Unknown');
  }

  switch (orderState) {
    case "pending":
      {
        print(orderState);
      }
      break;
    case "onWay":
      {
        print(orderState);
      }
      break;
    case "finished":
      {
        print(orderState);
      }
      break;
    case "returned":
      {
        print(orderState);
      }
      break;
    case "refused":
      {
        print(orderState);
      }
      break;
    default:
      {
        print('Unknown');
      }
      break;
  }
}

void forLoop() {
  print('Start loop');

  for (int counter = 0; counter < 6; counter++) {
    if (counter == 3) {
      continue;
    }

    print(counter);
  }

  print('End loop');
}

void doWhile() {
  print('Start loop');

  int counter = 4;

  do {
    print(counter);
    counter++;
  } while (counter < 5);

  print('End loop');
}

void whileLoop() {
  print('Start loop');

  int counter = 0;

  while (counter < 10) {
    print(counter);
    counter++;
  }

  print('End loop');
}
