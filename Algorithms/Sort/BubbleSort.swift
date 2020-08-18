/*
 * Сортировка пузырьком:
 * Метод сортировки массивов путем последовательного сравнения и
 * обмена соседних элементов, если предшествующий оказывается
 * больше предыдущего.
 * Сложность алгоритма: O(n^2)
 */

extension Array where Iterator.Element: Comparable {
  var bubbleSorted: Array<Element> {
    guard self.count > 1 else { return self }
    
    var array = self
    
    for i in array.indices[0..<array.count - 1] {
      for j in array.indices[0..<array.count - 1 - i] {
        if array[j] > array[j+1] {
          (array[j], array[j+1]) = (array[j+1], array[j])
        }
      }
    }
    
    return array
  }
}

print(((-5...5).shuffled() + (-5...5).shuffled()).bubbleSorted)
print(["Smith", "John", "🙃", "🙂"].bubbleSorted)

/*
 * Output:
 * [-5, -5, -4, -4, -3, -3, -2, -2, -1, -1, 0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5]
 * ["John", "Smith", "🙂", "🙃"]
 */
