# Importamos las librerias necesarias. 
import numpy as np
import random
import timeit
import sys

'''
 Devuelve el valor de la suma de los cuadrados.
 Se usa para determinar la distancia entre un punto y un 
 centroide y también se usa para determinar la diferencia en las medias
'''
def distance(x,y):
 sumOfSquares = 0
 for column in range(0,len(x)):
  sumOfSquares = sumOfSquares + (x[column] - y[column])**2
 return sumOfSquares

# Main Function 
# K-Means Algorithm 

if __name__ == "__main__":
 
 # Obtenemos la sample
 filename = 'twoCircles.txt'

 # Obtener el numero de clusters
 k = int(sys.argv[1])
 # Numero de iteraciones
 maxIterations = int(sys.argv[2]) 
  
 # Obtener el epsilon
 epsilonThreshold = 0.00001

 data = np.loadtxt(filename)
 # Aqui obtenemos todos los means
 means = np.zeros((k,data.shape[1]))
 # Asignacion para cada cluster
 membership = np.zeros(len(data)) 
 # Pasar el test inicial
 delta = 1
 iterations = 0

 # Escogemos K de manera aleatoria para hacer los means iniciales
 initialMeans = random.sample(list(data),k)
 start = timeit.default_timer()
 while iterations < maxIterations and delta > epsilonThreshold:
  rowIndex = 0
  for row in data:
   index = 1
   clusterIndex = 1
   minDistance = np.sum((row - initialMeans[0])**2)
   for i in range(1,k):
    prevDistance = np.sum((row - initialMeans[i])**2)
    index = index + 1
    if(prevDistance < minDistance):
     minDistance = prevDistance
     clusterIndex = index
   
   membership[rowIndex] = clusterIndex
   rowIndex = rowIndex + 1
    
  # Encontramos nuevos means
  for i in range(0,k):
   ids = np.where(membership == i + 1)
   myPoints = data[ids,]
   if len(ids[0]) == 1:
    means[i,:] = myPoints
   else:
    means[i,:] = np.mean(myPoints, axis = 1)
  delta = 0
 
  for row in range(0,k):
   delta = delta + distance(means[row], initialMeans[row])
 
  initialMeans = means
  print('Delta Value:')
  print(delta)
  iterations = iterations + 1
 
 # Calculamos la delta
 # Diferencia de los viejos means con los nuevos
 print('Time')
 print(timeit.default_timer() - start)
 print('Means')
 print(means)
 print('Grupo que Pertenece')
 print(membership)