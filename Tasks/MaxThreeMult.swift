/*
 * Условие:
 * У вас есть массив с целыми числами, в том числе и отрицательными,
 * вам нужно найти самое большое произведение 3 чисел из этого массива.
 *
 * Например: у вас есть массив list_of_ints, содержащий числа -10, -10, 1, 3, 2.
 * Функция, которая обрабатывает этот массив, должна вернуть 300, так как -10 * -10 * 3 = 300.
 *
 * Задание нужно выполнить максимально эффективно, не забывая учесть отрицательные числа.
 */

extension Array where Iterator.Element: Comparable & Numeric {
  func maxMul() -> Iterator.Element {
    guard self.count >= 3 else { fatalError("arr count cannot be less than 3") }
    
    var first  = self[0]
    var second = self[1]
    var third  = self[2]
    
    for i in self[3...] {
      let mainMul   = [first, second, third].reduce(1, *)
      let firstMul  = [first, second, i].reduce(1, *)
      let secondMul = [first, third, i].reduce(1, *)
      let thirdMul  = [second, third, i].reduce(1, *)
      
      let maxMul = [mainMul, firstMul, secondMul, thirdMul].max()!
      
      if firstMul == maxMul {
        third = i
      }
      else if secondMul == maxMul {
        second = i
      }
      else if thirdMul == maxMul {
        first = i
      }
    }
    
    return [first, second, third].reduce(1, *)
  }
}

let arr0 = [-10, -12, -12, 5, -3, 1, 2, 3, 4, 5, 10, 91, 120, 2, -10, -19]
let arr1 = [-10, -12, -12, -5, -3]
let arr2 = [10, 12, 12, 5, 3]

print(arr0.maxMul(), arr1.maxMul(), arr2.maxMul())
// Output: 27360 -150 1440
