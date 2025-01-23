class UniqueID {
  static int _idCounter = 0;

  static String makeID() {
    _idCounter++;
    return "ID$_idCounter";
  }
}

void main() {
  print(UniqueID.makeID());
  print(UniqueID.makeID());
}