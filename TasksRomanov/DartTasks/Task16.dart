class Matrix {
  List<List<int>> data;

  Matrix(this.data);

  Matrix operator +(Matrix other) {
    int rows = data.length;
    int cols = data[0].length;
    List<List<int>> result = List.generate(rows, (i) => List.filled(cols, 0));

    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        result[i][j] = data[i][j] + other.data[i][j];
      }
    }
    return Matrix(result);
  }

  Matrix operator *(Matrix other) {
    int rows = data.length;
    int cols = other.data[0].length;
    List<List<int>> result = List.generate(rows, (i) => List.filled(cols, 0));

    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        for (int k = 0; k < data[0].length; k++) {
          result[i][j] += data[i][k] * other.data[k][j];
        }
      }
    }
    return Matrix(result);
  }

  void display() {
    for (var row in data) {
      print(row);
    }
  }
}

void main() {
  Matrix matrix1 = Matrix([
    [12, 8],
    [2, 9]
  ]);
  Matrix matrix2 = Matrix([
    [4, 1],
    [5, 12]
  ]);

  Matrix result = matrix1 + matrix2;
  result.display();
}