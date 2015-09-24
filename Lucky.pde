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

int[] Lucky_numbers (int n){ 
  int[] a = crea_arreglo_impares (n);
  int e = tamano_arreglo(n); 
  int p = 1; 
  int h = a[p]; 
  while(h<=e){ 
    a  = borra_numeros (a,e,h); 
    p++; 
    h = a[p]; 
  } 
  return a; 
} 
boolean Verificar_numero (int n){ 
   boolean b = false;
  if(n==0||n==5||n==6){
    b=false;
  }else{
    if(n==1){
      b = true;
    }else{
      if(n==2){
        b=false;
      }else{
        int e = tamano_arreglo(n); 
        int[] a = Lucky_numbers(n); 
        for(int i=0;i<=e-1;i++){ 
          if (a[i]==n){ 
          b = true; 
          } 
        } 
      }
    }  
   }
  return b; 
};

boolean Verifica_numero (int n){ 
   boolean b = false;
  if(n==0||n==1||n==5||n==6){
    b=false;
  }else{
    if(n==2){
      b=false;
      println("El numero 'm' no es un numero de la suerte!"); 
      println("Try Again :´("); 
    }else{
      int e = tamano_arreglo(n); 
      int[] a = Lucky_numbers(n); 
      for(int i=0;i<=e-1;i++){ 
        if (a[i]==n){ 
          b = true; 
        } 
      } 
      if(b==false){ 
        println("El numero 'm' no es un numero de la suerte!"); 
        println("Try Again :´("); 
      }else{ 
        println("El numero 'm' es un numero de la suerte!!!"); 
        println(":D"); 
      }
     }
  }
  return b; 
};

int[] arreglo_final (int n){
  int[] a = Lucky_numbers (n*100); 
  int[] j = new int [n]; 
  for (int i=0;i<=n-1;i++){ 
    j[i]=a[i]; 
   } 
   return j; 
}  
//Utilize n para imprimir los primeros n numeros de la suerte 
//Utilize m para saber si m es un numero de la suerte o no.
//Utilize q para saber que numeros hasta q son de la suerte y graficarlo.
void setup(){
  //
  int n=100;
  int m = 1;
  int q = 89;
  //
  println ("LUCKY NUMBERS"); 
  println("Los primeros 'n' numeros de la suerte son:");
  println("Respuesta dadas para n=");
  println(n);
  //Los n primeros numeros de la suerte.
  if(n!=2)
  println(arreglo_final(n));
  if(n==2)
  println(1);
  println("Es m un numero de la suerte?");
  println("Respuesta dadas para m=");
  println(m);
  //Determina si n es un numero de la suerte
  println(Verifica_numero(m));
  println ("Jonatan Campo - Camilo Diaz - Manuel Miranda");
  double u = sqrt(q);
  int x = (int)u+1;
  size(700,700);
  int w = width/x;
  int h = height/x;
  int c = 1;
  for (int i=0;i<x;i++){
    for (int j=0;j<x;j++){
      if(c<=q){     
        if(Verificar_numero(c)==true){
          fill(0,100,0);
          rect(j*w,i*h,w,h);
        }else{
          fill(100000);
          rect(j*w,i*h,w,h);
        }
        c++;
      }
    }
  }
}