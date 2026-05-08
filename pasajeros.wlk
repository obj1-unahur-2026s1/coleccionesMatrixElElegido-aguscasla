object neo {
    var energia = 100

    method saltar() {
        energia /= 2
    }

    method vitalidad() = energia / 10
    method esElElegido() = true
}
object morfeo {
    var vitalidad = 8
    var estaCansado = false
    
    method saltar() {
        vitalidad -= 1
        estaCansado = not (estaCansado)
    }
    method esElElegido() = false
    method vitalidad() = vitalidad 
}
object trinity {
    method vitalidad() = 0 
    method esElElegido() = false

    method saltar() {}
}

object nave {
    const pasajeros = [neo, morfeo, trinity]

    method agregarPasajero(unPasajero) {
        pasajeros.add(unPasajero)
    }

    method cuantosPasajerosHay() = pasajeros.size()
    //method pasajeroDeMayorVitalidad() = pasajeros.any({0}) 
    method pasajeroDeMayorVitalidad() {
        return pasajeros.max({p => p.vitalidad()})
        // p, es una variable que toma a cada elemento de la lista/connjunto
        // para p, tomar de p la vitalidad. Aqui p, es un pasajero (los elementos de la coleccion)
            // mayor = lista[0]
            // for p in range(lista.size() - 1):
            //      if p > mayor:
            //          mayor = p
            // return p
    }
    method bajarPasajero(unPasajero) {
        pasajeros.remove(unPasajero)
    }
    method estaElElegido() {
        return pasajeros.any({p => p.esElElegido()})
    }
    method chocarNave() {
        pasajeros.forEach({p => p.saltar()
                                self.bajarPasajero(p)})
    }
    method acelerarNave() {
        pasajeros.forEach({p => if(not p.esElElegido()) p.saltar()})
    }

    method pasajeros() = pasajeros

    method pasajerosValiosos() {
        return pasajeros.filter({pas => pas.vitalidad() > 5})
    }
    method hayPasajeroSinVitalidad() {
        return pasajeros.any({pas => pas.vitalidad() == 0})
    }
    method losPasajerosPuedenEnfrentarAUnAgente() {
        return pasajeros.all({pas => pas.vitalidad() >= 2})
    }
    method vitalidadTotal() {
        return self.vitalidadDeLosPasajeros().sum()
    }
    method vitalidadPromedio() {
        return  self.vitalidadTotal() / self.cuantosPasajerosHay()
    }
    method cuantosPasajerosTienenVitalidadPar() {
        return pasajeros.count({pas => pas.vitalidad().even()})
    }
    method saltarTodos() {
        pasajeros.forEach({pas => pas.saltar()})
    }
    method simulacroCombate() {
        pasajeros.forEach({pas => pas.saltar() pas.saltar() pas.saltar()})
    }
    method vitalidadDeLosPasajeros() {
        return pasajeros.map({pas => pas.vitalidad()})
    }
    method ordenarPasajeros() {
        return pasajeros.sortBy({a, b => a.vitalidad() < b.vitalidad()})
    }
    method pasajeroParaLimpiar() {
        return pasajeros.anyOne()
    }
    method elegidosEnLaNave() {
        return pasajeros.count({pas => pas.esElElegido()})
    }
    method potenciaDeLaVitalidad() {
        var potencia = 1
        pasajeros.forEach({pas => potencia *= pas.vitalidad()})
        return potencia
    }
}
