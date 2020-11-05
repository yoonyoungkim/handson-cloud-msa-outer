resource "helm_release" "nats-operator" {
  name       = "nats-operator"
  repository = "https://geek-cookbook.github.io/charts"
  chart      = "geek-cookbook/nats-operator"
  version    = "0.1.3"
  timeout    = 1200
}

resource "helm_release" "nginx-ingress-controller" {
  name       = "nginx-ingress-controller"
  repository = "https://helm.nginx.com/stable"
  chart      = "stable/nginx-ingress"
  version    = "0.7.0"
  timeout    = 1200
}

