from sqlalchemy import create_engine, MetaData, Table, Column, Integer, String, Text, DateTime, BigInteger
from sqlalchemy.orm import mapper, sessionmaker
 
class Solucion(object):
    pass

class Resultado(object):
    __tablename__  = 'resultados'
    id =  Column(Integer, primary_key=True)
    numero_reinas = Column(Integer)
    resultado = Column(Text)
    fecha_ejecucion = Column(DateTime(timezone=True))
    numero_resultados = Column(BigInteger)
    
    def __init__(self,numero_reinas,resultado,numero_resultados):
        self.numero_reinas = numero_reinas
        self.resultado = resultado
        self.numero_resultados = numero_resultados

 
def loadSession():
    engine = create_engine('postgresql+psycopg2://postgres:1qwerty7@database:5432/queen')
    metadata = MetaData(engine)
    tabla_soluciones = Table('soluciones_conocidas', metadata, autoload=True)
    tabla_resultados = Table('resultados', metadata, autoload=True)
    mapper(Solucion, tabla_soluciones)
    mapper(Resultado, tabla_resultados)
    Session = sessionmaker(bind=engine)
    session = Session()
    return session

def num_soluciones(numero, session):
    res = session.query(Solucion).filter(Solucion.numero_reinas==numero).all()
    num_soluciones = res[0].soluciones
    return num_soluciones

def guarda_solucion(resultado, session):
    session.add(resultado)
    session.commit()
    session.refresh(resultado)

if __name__ == "__main__":
    session = loadSession()
    num_soluciones(7, session)
    #res = session.query(Solucion).filter(Solucion.numero_reinas==7).all()
    #res2 = session.query(Resultado).all()
    sol = num_soluciones(7, session)
    print(sol)
    result = Resultado(numero_reinas=1,resultado='', numero_resultados=0)
    #guarda_solucion(result, session)
    #print(result.id)