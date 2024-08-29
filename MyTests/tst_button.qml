import QtQuick 2.15
import QtTest 1.2
import ".." // Importer le composant à tester

TestCase {
    name: "ButtonTest"

    Button{
        id: button
        text: "Test"

        onClicked: {
            console.log("Signal clicked émis")
        }
    }

    function test_initialProperties() {
        compare(button.width, 100, "La largeur initiale du bouton devrait être 100")
        compare(button.height, 50, "La hauteur initiale du bouton devrait être 50")
        compare(button.text, "Test", "Le texte initial devrait être 'Test'")
    }

    function test_signalEmission() {
        // Simuler un clic
        mouseClick(button)
        wait(2000)  // Attendre que le signal soit potentiellement émis
        verify(button.clicked, "Le signal 'clicked' aurait dû être émis")
    }
}
