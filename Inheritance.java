class Animal {
    int leg;
    String name;

    public void setLeg(int leg) {
        this.leg = leg;
    }

    public int getLeg() {
        return leg;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void print() {
        System.out.println("Animal: " + name + " has " + leg + " legs.");
    }
}

class Dog extends Animal {
    String breed;

    public void setBreed(String breed) {
        this.breed = breed;
    }

    public String getBreed() {
        return breed;
    }

    public void print() {
        System.out.println("Dog: " + name + " is a " + breed + " has " + leg + " legs.");
    }
}

public class Inhertance {

    public static void main(String[] args) {
        // Base Class
        Animal animal = new Animal();
        animal.setName("Dog");
        animal.setLeg(4);
        animal.print();

        // Child Class
        Dog dog = new Dog();
        dog.setName("Buddy");
        dog.setLeg(4);
        dog.setBreed("Pug");
        dog.print();

    }

}
