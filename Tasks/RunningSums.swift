/*
 * Условие:
 * * Дан массив чисел. Мы определяем текущую сумму массива как runningSum[i] = sum(nums[0]...nums[i]).
 * * Нужно вернуть текущую сумму чисел.
 *
 * Форматы:
 * * Input: [1,2,3,4]
 * * Output: [1,3,6,10]
 * * Explanation: [1, 1+2, 1+2+3, 1+2+3+4]
 */

extension Array where Element == Int {
  var runningSums: Array<Element> {
    guard self.count > 0 else { return self }
    
    var result = [self[0]]
    
    var i = 0
    
    while i < nums.count - 1 {
      result.append(result[i] + self[i + 1])
      i += 1
    }
    
    return result
  }
}

let nums = [1, 2, 3, 4]

print(nums.runningSums)
