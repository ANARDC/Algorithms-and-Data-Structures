/*
 * Сортировка вставками:
 * Метод сортировки массивов путем поиска минимального элемента
 * из оставшейся части массива и вставки на текущее место
 * в массиве с сдвигом остальной части.
 * Сложность алгоритма: O(n^2)
 */

extension Array where Element: Comparable {
  var insertionSorted: Array<Element> {
    var array = self
    
    for i in 1..<array.count {
      let current = array[i]
      var j = i - 1
      
      while j >= 0 && array[j] > current {
        array[j+1] = array[j]
        j -= 1
      }
      
      array[j+1] = current
    }
    
    return array
  }
}

print(((-5...5).shuffled() + (-5...5).shuffled()).insertionSorted)
print(["Smith", "John", "🙃", "🙂"].insertionSorted)

/*
 * Output:
 * [-5, -5, -4, -4, -3, -3, -2, -2, -1, -1, 0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5]
 * ["John", "Smith", "🙂", "🙃"]
 */
