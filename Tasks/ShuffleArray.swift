/*
 * Условие:
 * * Дан массив чисел, состоящий из 2n элементов в виде [x1, x2, ..., xn, y1, y2, ..., yn].
 * * Возвращает массив в виде [x1, y1, x2, y2, ..., xn, yn]
 *
 * Форматы:
 * * Input: nums = [2,5,1,3,4,7], n = 3
 * * Output: [2,3,5,4,1,7]
 * * Explanation: Since x1=2, x2=5, x3=1, y1=3, y2=4, y3=7 then the answer is [2,3,5,4,1,7]
 */

extension Array where Element == Int {
//  Неоптимальное решение
//  var shuffled: Array<Element> {
//    guard self.count % 2 == 0 else { return self }
//
//    return zip(self[0...self.count / 2 - 1],
//               self[self.count / 2...self.count - 1])
//      .reduce([]) { initial, pair  in
//        initial + [pair.0, pair.1]
//    }
//  }
  
  var shuffled: Array<Element> {
    var result = Array<Element>()
    
    result.reserveCapacity(self.count)

    for i in self[0...self.count / 2 - 1].indices {
      result.append(self[i])
      result.append(self[i + self.count / 2])
    }

    return result
  }
}

let nums = [1, 2, 3, 4, 5, 6]

print(nums.shuffled)
