object tom {
    var energia = 50
    method comerRaton(ratonAComer){
        energia = energia + (12 + ratonAComer.peso())
    }
    method correr(distancia){
        energia = energia - (distancia/2)
    }
    method velocidadMaxima(){
        return 5 + (energia/10)
    }
    method energia(){
        return energia
    }
    method puedeCazar(unaDistancia){
        return unaDistancia/2 <= energia
    }
    method cazarRatonSiPuede(unRaton,unaDistancia){
        if(self.puedeCazar(unaDistancia)){
            self.correr(unaDistancia)
            self.comerRaton(unRaton)
        }
    }
}

object jerry {
    var edad = 2
    method cumplirAños(){
        edad = edad +1
    }
    method peso(){
        return edad * 20
    }
    method edad(){
        return edad
    }
}

object nibbles {
    method peso(){
        return 35
    }
}

// Inventar otro ratón