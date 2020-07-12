/*
 * Условие:
 * Написать функцию, которая принимает строку как свой единственный параметр и
 * возвращает true если строка содержит только уникальные символы
 *
 * Например:
 * Input: "qwerty"
 * Output: true
 *
 * Input: "qwertt"
 * Output: false
 */

extension String {
  var symbolsIsUnique: Bool { Set(self).count == self.count }
}

let firstString  = "1234"
let secondString = "1123"
let thirdString  = "🙃🙂"

print([firstString, secondString, thirdString]
  .map { $0.symbolsIsUnique }
  .map { String($0) }
  .joined(separator: "\n"))
/*
 * Output:
 * true
 * false
 * true
 */
