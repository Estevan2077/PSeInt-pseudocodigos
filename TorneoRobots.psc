Funcion r <- ContarRondas(n)
    Si n = 0 Entonces
        r <- 0
    SiNo
        Escribir "Ronda ", n
        r <- ContarRondas(n - 1)
    FinSi
FinFuncion

Proceso TorneoRobots
	
    Definir modeloR1, modeloR2 Como Cadena
    Definir energiaR1, energiaR2 Como Real
    Definir fuerzaR1, fuerzaR2 Como Entero
    Definir velocidadR1, velocidadR2 Como Real
    Definir danoR1, danoR2 Como Real
    Definir ronda Como Entero
	
    modeloR1 <- "IronClad X"
    modeloR2 <- "SwiftBot Z"
	
    energiaR1 <- 120
    energiaR2 <- 90
	
    fuerzaR1 <- 85
    fuerzaR2 <- 60
	
    velocidadR1 <- 4.2
    velocidadR2 <- 7.8
	   
    ronda <- 1
	
    Mientras energiaR1 > 0 Y energiaR2 > 0 Hacer
		
        Escribir ""
        Escribir "===== RONDA ", ronda, " ====="
		
        danoR1 <- fuerzaR1 * 0.75
        danoR2 <- fuerzaR2 * 0.75
		
        Si velocidadR1 > velocidadR2 Entonces
			
            energiaR2 <- energiaR2 - danoR1
			
            Si energiaR2 > 0 Entonces
                energiaR1 <- energiaR1 - danoR2
            FinSi
			
        SiNo
			
            energiaR1 <- energiaR1 - danoR2
			
            Si energiaR1 > 0 Entonces
                energiaR2 <- energiaR2 - danoR1
            FinSi
			
        FinSi
		
        Escribir modeloR1, " energia: ", energiaR1
        Escribir modeloR2, " energia: ", energiaR2
		
        ronda <- ronda + 1
		
    FinMientras
	
    Si energiaR1 > energiaR2 Entonces
        Escribir ""
        Escribir modeloR1, " ES EL GANADOR"
    SiNo
        Escribir ""
        Escribir modeloR2, " ES EL GANADOR"
    FinSi
	
FinProceso