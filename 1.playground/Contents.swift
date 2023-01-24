import UIKit


/*
1. Почему внутри оператора IF переменная aVar6 меняет тип данных с Int? на Int после присваивания, а вне оператора IF не меняет, хотя выполняю аналичное присваивание?
2. Почему компилятор дает мне возможность объявить переменную aVar6 в одной области видимости дважды? Или внутри конструкции IF своя область видимости?
 */
var aVar5: Int? = Int("123")
var aVar6 = aVar5

print("aVar5 = \(type(of: aVar5))")
print("aVar6 = \(type(of: aVar6))")

if var aVar6 = aVar5 {
    print("aVar5 = \(type(of: aVar5))")
    print("aVar6 = \(type(of: aVar6))")
}

