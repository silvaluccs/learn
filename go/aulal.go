package main



import (
	"fmt"
	"sync"
	"time"
)

var wg sync.WaitGroup

func processarTarfas(nome string, tempo time.Duration) {

	defer wg.Done()

	for i := 1; i <= 3; i++ {
		time.Sleep(tempo)
		fmt.Printf("Tarefa %s - passo %d concluído\n", nome, i)
	}

	fmt.Printf("Tarefa %s concluída\n", nome)
}

func main() {

	fmt.Println("Iniciando tarefas...")

	wg.Add(2)

	go processarTarfas("A", 500*time.Millisecond)
	go processarTarfas("B", 800*time.Millisecond)

// Bloqueia a main até o contador chegar a zero
	fmt.Println("Aguardando processos terminarem...")
	wg.Wait()

	fmt.Println("Todos os processos concluídos.")
}

