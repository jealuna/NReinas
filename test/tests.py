import pytest
import reinas.queens as queens
import numpy as np
import models.consultas as consultas

def test_numero_reinas(numero):
    n = int(numero)
    lista_soluciones = []
    session = consultas.loadSession()
    tablero = np.zeros(shape=(n,n),dtype=int)    
    queens.n_reinas(tablero,0,lista_soluciones)    
    num_soluciones = consultas.num_soluciones(n, session)
    assert len(lista_soluciones) == num_soluciones