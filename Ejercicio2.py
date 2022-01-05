def div(num1=float, num2=float):
    try:
        num1/num2
    except ZeroDivisionError:
        while num2==0:
            num2=float(input("Digite un número en el denominador diferente de 0: "))
    return num1/num2
    
print(div(1,0))            
    