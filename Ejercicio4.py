import numpy as np


numeros=np.arange(1,101)
valores=[('fizzbuzz' if i % 3== 0 and i % 5==0 else('fizz'if i % 3==0 else ('buzz' if i % 5== 0 else i))) for i in numeros ]

print(valores)