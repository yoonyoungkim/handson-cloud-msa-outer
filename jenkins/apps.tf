data "local_file" "helm_chart_values" {
  filename = "${path.module}/values.yaml"
}

resource "helm_release" "jenkins" {
  name       = "jenkins"
  repository = "https://charts.helm.sh/stable"
  chart      = "jenkins"
  version    = "2.5.4"
  timeout    = 1200

  values = [data.local_file.helm_chart_values.content]

  depends_on = [
    kubernetes_secret.jenkins-secrets,
  ]
}