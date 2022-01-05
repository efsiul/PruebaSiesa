
class numeroPerfecto:
    
    def __init__(self, num):
        self.num=num
        self.divisores=[]
        it_is = True
        while it_is :
            self.num=input("Escriba un número positivo y que sea entero ")
            try:
                self.num=int(self.num)
                if self.num<0:
                    it_is = True
                else:
                    it_is = False
            except ValueError:
                print("La entrada es invalida, escribe el número correcto")
            except TypeError:
                print("La entrada es invalida, escribe el número correcto")

        else:                    
            self.numeroPerfecto()
        
        
        
        
    def numeroPerfecto(self):
        self.divisores= [i for i in range(1,self.num)  if self.num%i==0]
        numero = sum(self.divisores)
        if numero==self.num:
            print(f'''
                  ************************************************************************
                  El número {self.num} es perfecto y sus divisores son {self.divisores}
                  ************************************************************************''') 
        else:
            print(f'''
                  ************************************************************************
                  El número {self.num} no es perfecto
                  ************************************************************************''')

print(numeroPerfecto(6.5))