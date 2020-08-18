/*
 * Сортировка выбором:
 * 1. Поиск минимального элемента в массиве
 * 2. Обмен минимального элемента с текущим значением
 * 3. Повтор этих шагов до сортировки всего массива
 * Сложность алгоритма: O(n^2)
 */

extension Array where Iterator.Element: Comparable {
  var selectionSorted: Array<Element> {
    var array = self
    
    for i in 0..<array.count {
      for j in i..<array.count {
        if array[j] < array[i] {
          (array[i], array[j]) = (array[j], array[i])
        }
      }
    }
    
    return array
  }
}

print(((-5...5).shuffled() + (-5...5).shuffled()).selectionSorted)
print(["Smith", "John", "🙃", "🙂"].selectionSorted)

/*
 * Output:
 * [-5, -5, -4, -4, -3, -3, -2, -2, -1, -1, 0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5]
 * ["John", "Smith", "🙂", "🙃"]
 */
