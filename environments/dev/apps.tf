resource "helm_release" "nats-operator" {
  name       = "nats-operator"
  repository = "https://geek-cookbook.github.io/charts/"
  chart      = "geek-cookbook/nats-operator"
  version    = "0.1.3"
  timeout    = 1200
}

resource "helm_release" "nginx-ingress-controller" {
  name       = "nginx-ingress-controller"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "bitnami/nginx-ingress-controller"
  version    = "5.6.14"
  timeout    = 1200
}

