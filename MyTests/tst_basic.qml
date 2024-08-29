import QtQuick 2.15
import QtTest 1.2

TestCase {
    name: "BasicTest"

    // Fonction d'initialisation du test
    function initTestCase() {
        console.log("Initialisation du test")
    }

    // Fonction de test pour vérifier une condition simple
    function test_example() {
        var a = 2
        var b = 3
        compare(a + b, 5, "La somme de 2 et 3 devrait être 5")
    }

    // Fonction de nettoyage après le test
    function cleanupTestCase() {
        console.log("Nettoyage après les tests")
    }
}
