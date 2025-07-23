import Foundation  

var listaDeTarefas: [String] = []

func menu () {
    print (" === LISTA DE TAREFAS=== ")
    print ("1- Listar Tarefa")
    print ("2- Adicionar Tarefa")
    print ("3- Remover Tarefa")
    print ("4- Editar Tarefa")
    print ("0- Encerrar")
}

func listaTarefas (lista: [String]) {
    print ("---Tarefas---")
    
    for (posicao, tarefa) in lista.enumerated(){
        print("[\(posicao)] - \(tarefa)")
    }
}

func adcionarTarefa(tarefa: String, lista: [String]) -> [String]{
    var listaInterna = lista
    listaInterna.append(tarefa)
    return listaInterna
}

func removerTarefa (indice: Int, lista: [String]) -> [String]{
    var listaInterna = lista
    listaInterna.remove(at: indice)
    return listaInterna
}

func editarTarefa (indice: Int, tarefaEditada: String, lista: [String]) -> [String]{
    var listaInterna = lista
    listaInterna[indice] = tarefaEditada
    return listaInterna
}

var opcao = -1

repeat {
    menu()
    guard let opcaoF1 = readLine(),
    let opcaoF = Int (opcaoF1) else {
        continue
    }
    opcao = opcaoF
    
    switch opcao {
        case 1:
        listaTarefas(lista: listaDeTarefas)
        
        case 2:
        print ("Digite a nova tarefa:")
        let entrada = readLine()!
        
        listaDeTarefas = adcionarTarefa(tarefa: entrada, lista: listaDeTarefas)
        
        
        case 3:
        print ("Remova uma tarefa:")
        var posicao = Int(readLine()!)!
        listaDeTarefas = removerTarefa(indice: posicao, lista: listaDeTarefas)
        
        case 4:
        print("Edite uma tareda:")
        var novaTarefa = readLine()!
        var posicao = Int(readLine()!)!
        listaDeTarefas = editarTarefa(indice: posicao, tarefaEditada: novaTarefa, lista: listaDeTarefas)
        
        default:
        print("Número Inválido!")
        
        
        
    }
    
} while opcao != 0
