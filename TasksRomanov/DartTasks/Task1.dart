class Person {
    String name;
    int age;
    String gender;

    Person(this.name, this.age, this.gender);

    void displayInfo() {
        print("Имя: $name, Возраст: $age, Пол: $gender");
    }

    void incrementAge() {
        age++;
    }

    void changeName(String newName) {
        name = newName;
    }
}

void main() {
    Person person = Person("Василий", 17, "Мужской");
    person.displayInfo();
    person.incrementAge();
    person.displayInfo();
    person.changeName("Степан");
    person.displayInfo();
}