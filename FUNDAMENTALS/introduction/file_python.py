# Definición de variables
num1 = 42   # variable numérica entera
num2 = 2.3  # variable numérica decimal
boolean = True  # variable booleana que indica verdadero
string = 'Hello World'  # variable de cadena de caracteres

pizza_toppings = ['Pepperoni', 'Sausage', 'Jalepenos', 'Cheese', 'Olives']  # variable de lista que contiene ingredientes de pizza
person = {'name': 'John', 'location': 'Salt Lake', 'age': 37, 'is_balding': False}  # variable de diccionario que contiene información sobre una persona
fruit = ('blueberry', 'strawberry', 'banana')  # variable de tupla que contiene diferentes tipos de frutas

# Impresión del tipo de datos de la variable fruit y el índice 1 de la lista pizza_toppings
print(type(fruit))
print(pizza_toppings[1])

# Agregar un elemento a la lista pizza_toppings y cambiar la clave 'name' en el diccionario person
pizza_toppings.append('Mushrooms')
print(person['name'])
person['name'] = 'George'
person['eye_color'] = 'blue'

# Impresión del tercer elemento de la tupla fruit y declaraciones if-else para imprimir un mensaje dependiendo de la longitud de la cadena de caracteres en la variable string y si el valor de num1 es mayor que 45 o no
print(fruit[2])

if num1 > 45:
    print("It's greater")
else:
    print("It's lower")

if len(string) < 5:
    print("It's a short word!")
elif len(string) > 15:
    print("It's a long word!")
else:
    print("Just right!")

# Bucles for y while
for x in range(5):
    print(x)
for x in range(2,5):
    print(x)
for x in range(2,10,3):
    print(x)
x = 0
while(x < 5):
    print(x)
    x += 1

# Operaciones con la lista pizza_toppings y el diccionario person
pizza_toppings.pop()
pizza_toppings.pop(1)

print(person)
person.pop('eye_color')
print(person)

# Bucle for con declaraciones if y continue y break
for topping in pizza_toppings:
    if topping == 'Pepperoni':
        continue
    print('After 1st if statement')
    if topping == 'Olives':
        break

# Definición de funciones y llamadas a las mismas
def print_hello_ten_times():
    for num in range(10):
        print('Hello')

print_hello_ten_times()

def print_hello_x_times(x):
    for num in range(x):
        print('Hello')

print_hello_x_times(4)

def print_hello_x_or_ten_times(x = 10):
    for num in range(x):
        print('Hello')

print_hello_x_or_ten_times()
print_hello_x_or_ten_times(4)
