// Selection Sort
void selectionsort(int A[], int N) {
  for(int i = 0; i < N - 1; i++ ){
    int min = i;
    for(int j = i+1; j < N; j++)
      if (A[j] < A[min]) min = j;
    swap(A[i],A[min]);
  }
}

// Insertion Sort
void insertionsort(int A[], int N) {
  for(int i = N-1; i > 0; i--)
    if (A[i] < A[i-1]) {
      swap(A[i],A[i-1]);
    }

  for(int i = 2; i <= N-1; i++) {
    int j = i;
    int v = A[i];
    while(v < A[j-1]) {
      A[j] = A[j-1]; j--;
    }
    A[j] = v;
  }
}

// Bubble Sort
void bubblesort (int v[],int n) 
{
  int i,k;
  for (k=n-1;k>0;k--)
    for (i=0;i<k;i++) 
      if (v[i] > v[i+1]) 
        swap(v[i],v[i+1]);
}

// Quick Sort 
void quicksort1(int v[], int primo, int ultimo) {
  if (primo < ultimo) {
    // begin partition
    int p = primo;
    int u = ultimo;
    int pivot = v[ultimo];

    do {
      while ((p < u) && (v[p] <= pivot))
								p++;
      while ((u > p) && (v[u] >= pivot))
								u--;
      if (p < u)
								swap(v[p],v[u]);
    } while (p < u);

    swap(v[p],v[ultimo]);
    // end partition
    quicksort1(v, primo, p-1);
    quicksort1(v, p+1, ultimo);
  }
}
void quicksort (int v[],int n)
{
  quicksort1 (v,0,n-1);
}

// Merges a and b into c
void mergeArray(const double a[],int n1,const double b[],int n2,double c[]) 
{
  
  for (int i=0,j=0,k=0;k<n1+n2;k++) {
    if (j==n2 || (i<n1 && a[i]<b[j])) {
      c[k]=a[i];
      i++;
    }
    else   {
      c[k]=b[j];
      j++;
    }
  }
}

// Swap interi
void swap(int & x, int & y) {
  int z = x;
  x = y;
  y = z;
}

// Swap interi
void swap(double & x, double & y) {
  double z = x;
  x = y;
  y = z;
}

// Swap array di int
void swapArray(int* a, int* b, int N) {
    for (int i = 0; i < N; i++) {
        int tmp = a[i];
        a[i] = b[i];
        b[i] = tmp;
    }
}

// Swap array di double
void swapArray(double* a, double* b, int N) {
    for (int i = 0; i < N; i++) {
        double tmp = a[i];
        a[i] = b[i];
        b[i] = tmp;
    }
}
