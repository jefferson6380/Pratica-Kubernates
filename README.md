# Objetivo: Praticar Deploy e Orquestração de Aplicação com Docker e Kubernetes

# Descrição do exercício: Criar cluste com o minikube e orquestrar pods com o kubernates atravez de Deployments. Escalonar pods e monitorar informações.

---

# Configurando ambiente

## Instale e abra o Docker Desktop.

https://docs.docker.com/desktop/setup/install/windows-install/

## Instale o Kubectl na sua máquina host.

https://kubernetes.io/pt-br/docs/tasks/tools/

## Valide a instalação (obrigatório) checando a versão com o comando:

```shell
kubectl version --client
```

## Instale o minikube

https://minikube.sigs.k8s.io/docs/start

## Verifica a versão do Minikube instalada (obrigatório)

```shell
minikube version
```

---

# 🚀 Executando comandos no PowerShell

## 🟢 Iniciar Minikube

minikube start # Inicia o cluster Minikube no ambiente local.

## 🛠️ Construir e carregar a imagem Docker

docker build -t <nome-da-imagem> <diretório-do-Dockerfile> # Cria uma imagem personalizada baseada no Dockerfile especificado.
 Exemplo: docker build -t my-nginx:v1 .

minikube image load <nome-da-imagem> # Carrega a imagem no Minikube para que possa ser usada nos pods.
Exemplo: minikube image load my-nginx:v1

## 📌 Implantar a aplicação no Kubernetes

kubectl apply -f <arquivo-YAML> # Aplica um arquivo YAML no Kubernetes, criando ou atualizando recursos.

## Exemplo: kubectl apply -f nginx-deployment.yaml
Exemplo: kubectl apply -f nginx-service.yaml

## 🔍 Verificar status da implantação

kubectl get deployments # Lista todos os Deployments ativos no cluster.

kubectl get pods # Lista os pods em execução, mostrando seu status.

kubectl get services # Lista os serviços disponíveis no Kubernetes.

## 🌐 Descobrir URL do serviço no Minikube

minikube service <nome-do-serviço> --url # Exibe a URL gerada pelo Minikube para acessar um serviço Kubernetes.
Exemplo: minikube service my-nginx-service --url

## URL retornada: http://127.0.0.1:56555

## 📜 Verificar novamente os pods

kubectl get pods # Confirma que os pods estão rodando corretamente.

## 📖 Verificar logs de um pod

kubectl logs <nome-do-pod> # Exibe os logs gerados por um pod Kubernetes específico.
Exemplo: kubectl logs my-nginx-deployment-7678ff4bf7-ndprn

## 🗑️ Remover recursos do Kubernetes

kubectl delete -f <arquivo-YAML> # Remove os recursos definidos no arquivo YAML.
Exemplo: kubectl delete -f nginx-service.yaml
Exemplo: kubectl delete -f nginx-deployment.yaml

## ❌ Parar e excluir Minikube

minikube stop # Para o cluster Minikube sem removê-lo.

minikube delete # Remove completamente o cluster Minikube e todos os recursos criados.

## 🔥 Gerenciar imagens Docker

docker images # Lista todas as imagens Docker disponíveis no sistema.

docker rmi <id-da-imagem> # Remove uma imagem Docker específica pelo seu ID.
Exemplo: docker rmi abc123def456
