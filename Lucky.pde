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

int[] crea_arreglo_impares (int n){ 
  int[] a = crea_arreglo (n); 
  int i = 0; 
  for (int m=1;m<=n;m++){ 
    if (m%2 == 1){ 
      a[i] = m; 
      i+= 1; 
    } 
  } 
  return a; 
} 

int[] ceros_al_final(int[] a,int n){ 
  int[] b= new int [n]; 
  for (int s=0;s<=n-1;s++){ 
    b[s]=0; 
  } 
  int i=0; 
  int k=0; 
  while (i<=n-1){ 
    if (a[i]!= 0){ 
      b[k]=a[i]; 
        k++; 
    } 
    i++; 
  } 
  return b; 
} 

int[] borra_numeros (int[] a, int e,int k){ 
  for (int j=k-1;j<=e-1;j+=k){ 
       a[j] = 0; 
    } 
    a  = ceros_al_final (a,e); 
    return a; 
} 

void setup(){ 
}