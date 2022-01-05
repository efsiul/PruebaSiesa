#La salida es 8. Explico: Aqui se utiliza el metodo de recursión, donde se llama tantas veces como se requiera la misma 
#función que se esta ejecutando. Cuando inicialmente se le brinda como argumento el valor de 5. Se evalua si ese número
#Es menor de 3, en caso de que así sea se devuelve el valor que entro en el parametro, en caso contrario retornaria 
#la operación donde se llama nuevamente la función en dos ocaciones, dandole como parametros en la primera función el valor 
#que entra restado 1, por la función con parametro valor -2. En cada una se evalua la condicion donde la unica forma que retorne
#un valor, es cuando estos tomen el valor menor a 3, por tanto el resultado de evaluar esta función, es un multiplo de 2
'''
            =2
        =3
            =1
    =4

        =2
5
        =2    
    =3 
        =1
        
        por tanto 2*1*2*2*1=8
''' 

def metodoQueHaceAlgo(valor):
    if (valor<3):
        return valor
    
    return metodoQueHaceAlgo(valor-1)*metodoQueHaceAlgo(valor-2)


valor = metodoQueHaceAlgo(5)
print(valor)
