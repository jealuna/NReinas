import numpy as np
import sys
import time
import models.consultas as consultas

def imprime_tablero(tablero):
    for i in range(np.shape(tablero)[0]):
        for j in range(np.shape(tablero)[1]):
            print(tablero[i][j], end=' ')
        print('\n')

def casilla_valida(tablero, fila, columna):
    dimension = np.shape(tablero)[0]
    for indice_columna in range(columna):
        if tablero[fila][indice_columna] == 1:
            return False

    for indice_fila, indice_columna in zip(range(fila, -1, -1), range(columna, -1, -1)):
        if tablero[indice_fila][indice_columna] == 1:
            return False

    for indice_fila, indice_columna in zip(range(fila, dimension, 1), range(columna, -1, -1)):
        if tablero[indice_fila][indice_columna] == 1:
            return False

    return True

def n_reinas(tablero,columna, lista_soluciones):
    dimension = np.shape(tablero)[0]
    if columna == dimension:
        solucion = np.array(tablero)
        lista_soluciones.append(np.array2string(solucion))
        #print(solucion)
        return
    
    for fila in range(dimension): 
        if casilla_valida(tablero, fila, columna): 
            tablero[fila][columna] = 1

            if n_reinas(tablero, columna + 1, lista_soluciones) == True: 
                return True

            tablero[fila][columna] = 0

def main(argv):
    try:
        n = int(argv[1])
    except Exception as e:
        print('El argumento debe de ser un entero')
        print(f'Error : {e}')
        return
    lista_soluciones = []
    tablero = np.zeros(shape=(n,n),dtype=int)
    n_reinas(tablero,0,lista_soluciones)
    #guarda_solucion
    session = consultas.loadSession()
    numero_resultados = len(lista_soluciones)
    result = consultas.Resultado(numero_reinas=n,resultado=str(lista_soluciones), numero_resultados=numero_resultados)
    consultas.guarda_solucion(result,session)
    print(f'Se encontraron {numero_resultados} resultados para {n}')
    print(lista_soluciones)
    # retraso = 60 #*10
    # duracion = time.time() + retraso
    # session = consultas.loadSession()
    # while time.time() < duracion:        
        # lista_soluciones = []
        # tablero = np.zeros(shape=(n,n),dtype=int)
        # n_reinas(tablero,0,lista_soluciones)
        # result = consultas.Resultado(numero_reinas=n,resultado=str(lista_soluciones), numero_resultados=len(lista_soluciones))
        # consultas.guarda_solucion(result,session)
        # n += 1
    # print (f'Terminado con n igual a {n}')

if __name__ == "__main__":
    main(sys.argv)
    #print(lista_soluciones)
    #imprime_tablero(tablero)
    #print(np.shape(tablero)[0])
    #print(tablero)
