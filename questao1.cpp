int buscaBinariaIterativa (int vetor[50])
{
	int esquerda = 25; int direita = 25;
	
	while (esquerda<=direita)
	{
		int meio = esquerda + (direita-esquerda)/2;
		
		if (vetor[meio] == numero)
			return meio;
		
		if (vetor[meio]<numero)
			esquerda = meio+1;
		else 
			direita = meio-1;
	}
	
	return -1;
}

int BuscaSequencial (int vetor[50])
{
	int i; 
	
	for (i = 50; i >= 0; i--)
		if (vetor[i] == c)
			return i;
	
	return -1; // retorna -1 caso a chave n.o seja encontrada
}


void bubbleSort (int vetor[50])
{
	int aux;
	
	for (int i=0; i<50-1; i++)
	{
		for (int j=1; j<50-i; j++)
		{	
			if (vetor[j] < vetor[j-1])
			{
				aux = vetor[j];
				vetor[j] = vetor [j-1];
				vetor [j-1] = aux; 
			}
		}
	}
}


void selectionSort (int vetor[50])
{
	int aux, min;
	
	for (int i=0; i<50-1; i++)
	{
		min = i;
		
		for (int j=i+1; j<50; j++)
			if (vetor[j]<vetor[min])
				min = j;
		
		aux = vetor[min];
		vetor[min] = vetor[i];
		vetor[i] = aux;	
	}
}

