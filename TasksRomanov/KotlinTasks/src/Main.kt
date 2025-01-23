import java.lang.IllegalArgumentException
import java.lang.IndexOutOfBoundsException
import java.lang.NumberFormatException
import kotlin.math.sqrt
import java.text.SimpleDateFormat

fun main() {
    while (true) {
        println("\nМеню:")
        println("Задание 1. Нахождение максимума")
        println("Задание 2. Калькулятор деления")
        println("Задание 3. Конвертер строк в числа")
        println("Задание 4. Проверка возраста")
        println("Задание 5. Нахождение корня")
        println("Задание 6. Факториал")
        println("Задание 7. Проверка массива на нули")
        println("Задание 8. Калькулятор возведения в степень")
        println("Задание 9. Обрезка строки")
        println("Задание 10. Поиск элемента в массиве")
        println("Задание 11. Конвертация в двоичную систему")
        println("Задание 12. Проверка делимости")
        println("Задание 13. Чтение элемента списка")
        println("Задание 14. Парольная проверка")
        println("Задание 15. Проверка даты")
        println("Задание 16. Конкатенация строк")
        println("Задание 17. Остаток от деления")
        println("Задание 18. Квадратный корень")
        println("Задание 19. Конвертер температуры")
        println("Задание 20. Проверка строки на пустоту")
        println("0. Выход")

        when (readLine()?.toIntOrNull()) {
            1 -> {
                println("Введите два числа для сравнения:")
                println(findMax(readInteger(), readInteger()))
                waitForEnter()
            }
            2 -> {
                println("Введите числитель и знаменатель для деления:")
                println(divideNumbers(readInteger(), readInteger()))
                waitForEnter()
            }
            3 -> {
                println("Введите строку для конвертации в число:")
                println(convertStringToNumber(readLine().orEmpty()))
                waitForEnter()
            }
            4 -> {
                println("Введите возраст:")
                println(validateAge(readInteger()))
                waitForEnter()
            }
            5 -> {
                println("Введите число для вычисления корня:")
                println(calculateSquareRoot(readInteger()))
                waitForEnter()
            }
            6 -> {
                println("Введите число для вычисления факториала:")
                println(calculateFactorial(readInteger()))
                waitForEnter()
            }
            7 -> {
                println("Введите массив чисел через пробел для проверки на нули:")
                validateArray(readArray())
                waitForEnter()
            }
            8 -> {
                println("Введите основание и степень для возведения в степень:")
                println(raiseToPower(readInteger(), readInteger()))
                waitForEnter()
            }
            9 -> {
                println("Введите строку и длину для обрезки:")
                println(cutString(readLine().orEmpty(), readInteger()))
                waitForEnter()
            }
            10 -> {
                println("Введите массив чисел через пробел и значение для поиска:")
                println(searchInArray(readArray(), readInteger()))
                waitForEnter()
            }
            11 -> {
                println("Введите число для преобразования в двоичную систему:")
                println(convertToBinary(readInteger()))
                waitForEnter()
            }
            12 -> {
                println("Введите два числа для проверки делимости:")
                println(checkDivisibility(readInteger(), readInteger()))
                waitForEnter()
            }
            13 -> {
                println("Введите элементы списка через пробел и индекс:")
                println(getItemByIndex(readStringList(), readInteger()))
                waitForEnter()
            }
            14 -> {
                println("Введите пароль для проверки сложности:")
                validatePassword(readLine().orEmpty())
                waitForEnter()
            }
            15 -> {
                println("Введите дату в формате dd.MM.yyyy:")
                validateDate(readLine().orEmpty())
                waitForEnter()
            }
            16 -> {
                println("Введите две строки для конкатенации:")
                println(concatenateTwoStrings(readLine(), readLine()))
                waitForEnter()
            }
            17 -> {
                println("Введите два числа для нахождения остатка от деления:")
                println(calculateModulo(readInteger(), readInteger()))
                waitForEnter()
            }
            18 -> {
                println("Введите число для нахождения квадратного корня:")
                println(sqrtValue(readInteger()))
                waitForEnter()
            }
            19 -> {
                println("Введите температуру в Цельсиях для конвертации в Фаренгейт:")
                println(convertCelsiusToFahrenheit(readDouble()))
                waitForEnter()
            }
            20 -> {
                println("Введите строку для проверки на пустоту:")
                validateString(readLine())
                waitForEnter()
            }
            0 -> return
            else -> println("Неверный выбор, попробуйте снова.")
        }
    }
}

fun waitForEnter() {
    println("Нажмите ENTER, чтобы продолжить...")
    readLine()
}

fun readInteger(): Int {
    print("Введите целое число: ")
    return readLine()?.toIntOrNull() ?: throw NumberFormatException("Ошибка: некорректный ввод.")
}

fun readDouble(): Double {
    print("Введите дробное число: ")
    return readLine()?.toDoubleOrNull() ?: throw NumberFormatException("Ошибка: некорректный ввод.")
}

fun readArray(): IntArray {
    print("Введите числа через пробел: ")
    return readLine()?.split(" ")?.mapNotNull { it.toIntOrNull() }?.toIntArray()
        ?: throw IllegalArgumentException("Ошибка: массив не распознан.")
}

fun readStringList(): List<String> {
    print("Введите элементы через пробел: ")
    return readLine()?.split(" ") ?: throw IllegalArgumentException("Ошибка: некорректный ввод.")
}

fun findMax(num1: Int, num2: Int): Int {
    if (num1 == num2) throw IllegalArgumentException("Числа одинаковы.")
    return if (num1 > num2) num1 else num2
}

fun divideNumbers(numerator: Int, denominator: Int): Double {
    if (denominator == 0) throw ArithmeticException("Ошибка: деление на ноль.")
    return numerator.toDouble() / denominator
}

fun convertStringToNumber(input: String): Int {
    return input.toIntOrNull() ?: throw NumberFormatException("Ошибка: невозможно преобразовать строку в число.")
}

fun validateAge(age: Int): String {
    if (age !in 0..150) throw IllegalArgumentException("Ошибка: недопустимый возраст.")
    return "Возраст корректен."
}

fun calculateSquareRoot(value: Int): Double {
    if (value < 0) throw IllegalArgumentException("Ошибка: число не должно быть отрицательным.")
    return sqrt(value.toDouble())
}

fun calculateFactorial(number: Int): Long {
    if (number < 0) throw IllegalArgumentException("Ошибка: число должно быть неотрицательным.")
    var result = 1L
    for (i in 1..number) {
        result *= i
    }
    return result
}

fun validateArray(numbers: IntArray) {
    if (numbers.contains(0)) throw IllegalArgumentException("Ошибка: массив содержит нули.")
    println("Массив не содержит нулей.")
}

fun raiseToPower(base: Int, exponent: Int): Double {
    if (exponent < 0) throw IllegalArgumentException("Ошибка: отрицательная степень недопустима.")
    return Math.pow(base.toDouble(), exponent.toDouble())
}

fun cutString(text: String, length: Int): String {
    if (length > text.length) throw IllegalArgumentException("Ошибка: длина превышает размер строки.")
    return text.substring(0, length)
}

fun searchInArray(array: IntArray, value: Int): Int {
    val index = array.indexOf(value)
    if (index == -1) throw IllegalArgumentException("Ошибка: элемент не найден.")
    return index
}

fun convertToBinary(number: Int): String {
    if (number < 0) throw IllegalArgumentException("Ошибка: число должно быть положительным.")
    return Integer.toBinaryString(number)
}

fun checkDivisibility(dividend: Int, divisor: Int): Boolean {
    if (divisor == 0) throw ArithmeticException("Ошибка: деление на ноль.")
    return dividend % divisor == 0
}

fun getItemByIndex(items: List<String>, position: Int): String {
    if (position !in items.indices) throw IndexOutOfBoundsException("Ошибка: индекс вне диапазона.")
    return items[position]
}

fun validatePassword(password: String) {
    if (password.length < 8) throw IllegalArgumentException("Ошибка: пароль слишком короткий.")
    println("Пароль соответствует требованиям.")
}

fun validateDate(input: String) {
    val dateFormat = SimpleDateFormat("dd.MM.yyyy")
    dateFormat.isLenient = false
    try {
        dateFormat.parse(input)
        println("Дата введена корректно.")
    } catch (e: Exception) {
        throw IllegalArgumentException("Ошибка: неверный формат даты.")
    }
}

fun concatenateTwoStrings(string1: String?, string2: String?): String {
    if (string1 == null || string2 == null) throw NullPointerException("Ошибка: одна из строк равна null.")
    return string1 + string2
}

fun calculateModulo(dividend: Int, divisor: Int): Int {
    if (divisor == 0) throw ArithmeticException("Ошибка: деление на ноль.")
    return dividend % divisor
}

fun sqrtValue(number: Int): Double {
    if (number < 0) throw IllegalArgumentException("Ошибка: отрицательное число.")
    return sqrt(number.toDouble())
}

fun convertCelsiusToFahrenheit(celsius: Double): Double {
    if (celsius < -273.15) throw IllegalArgumentException("Ошибка: температура ниже абсолютного нуля.")
    return celsius * 9 / 5 + 32
}

fun validateString(input: String?) {
    if (input.isNullOrEmpty()) throw IllegalArgumentException("Ошибка: строка пустая или равна null.")
    println("Строка введена корректно.")
}
