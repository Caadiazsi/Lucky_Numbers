 int[] crea_arreglo (int n){ 
  int arreglo_impar[]; 
  if (n%2 == 0){ 
     arreglo_impar = new int[n/2]; 
  }else{ 
    arreglo_impar = new int[(n+1)/2]; 
  } 
  return arreglo_impar; 
} 

int tamano_arreglo (int n){ 
  int f; 
  if (n%2 == 0){ 
     f = n/2; 
  }else{ 
    f = (n+1)/2; 
  } 
  return f; 
} 

void setup(){ 
}