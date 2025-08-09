# uptime-kuma

![Version: 2.22.0](https://img.shields.io/badge/Version-2.22.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.23.16](https://img.shields.io/badge/AppVersion-1.23.16-informational?style=flat-square)

A self-hosted Monitoring tool like "Uptime-Robot".

**Homepage:** <https://github.com/dirsigler/uptime-kuma-helm>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| dirsigler | <dennis@irsigler.dev> |  |

## Source Code

* <https://github.com/louislam/uptime-kuma>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | mariadb | 21.0.7 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| additionalVolumeMounts | list | `[]` | A list of additional volumeMounts to be added to the pod |
| additionalVolumes | list | `[]` | A list of additional volumes to be added to the pod |
| affinity | object | `{}` |  |
| dnsConfig | object | `{}` | Use this option to set custom DNS configurations to the created deployment |
| dnsPolicy | string | `""` | Use this option to set a custom DNS policy to the created deployment |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"louislam/uptime-kuma"` |  |
| image.tag | string | `"1.23.16-debian"` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations."nginx.ingress.kubernetes.io/proxy-read-timeout" | string | `"3600"` |  |
| ingress.annotations."nginx.ingress.kubernetes.io/proxy-send-timeout" | string | `"3600"` |  |
| ingress.annotations."nginx.ingress.kubernetes.io/server-snippets" | string | `"location / {\n  proxy_set_header Upgrade $http_upgrade;\n  proxy_http_version 1.1;\n  proxy_set_header X-Forwarded-Host $http_host;\n  proxy_set_header X-Forwarded-Proto $scheme;\n  proxy_set_header X-Forwarded-For $remote_addr;\n  proxy_set_header Host $host;\n  proxy_set_header Connection \"upgrade\";\n  proxy_set_header X-Real-IP $remote_addr;\n  proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;\n  proxy_set_header   Upgrade $http_upgrade;\n  proxy_cache_bypass $http_upgrade;\n}\n"` |  |
| ingress.enabled | bool | `false` |  |
| ingress.extraLabels | object | `{}` |  |
| ingress.hosts[0].host | string | `"chart-example.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| ingress.tls | list | `[]` |  |
| livenessProbe.enabled | bool | `true` |  |
| livenessProbe.exec.command[0] | string | `"extra/healthcheck"` |  |
| livenessProbe.failureThreshold | int | `3` |  |
| livenessProbe.initialDelaySeconds | int | `180` |  |
| livenessProbe.periodSeconds | int | `10` |  |
| livenessProbe.successThreshold | int | `1` |  |
| livenessProbe.timeoutSeconds | int | `2` |  |
| mariadb.architecture | string | `"standalone"` |  |
| mariadb.auth.database | string | `"uptime_kuma"` |  |
| mariadb.auth.password | string | `""` |  |
| mariadb.auth.rootPassword | string | `""` |  |
| mariadb.auth.username | string | `"uptime_kuma"` |  |
| mariadb.enabled | bool | `false` |  |
| nameOverride | string | `""` |  |
| namespaceOverride | string | `""` | A custom namespace to override the default namespace for the deployed resources. |
| networkPolicy | object | `{"allowExternal":true,"egress":true,"enabled":false,"ingress":true,"namespaceSelector":{}}` | Create a NetworkPolicy |
| networkPolicy.allowExternal | bool | `true` | Allow incoming connections only from specific Pods When set to true, the geoserver will accept connections from any source. When false, only Pods with the label {{ include "geoserver.fullname" . }}-client=true will have network access |
| networkPolicy.egress | bool | `true` | Enable/disable Egress policy type |
| networkPolicy.enabled | bool | `false` | Enable/disable Network Policy |
| networkPolicy.ingress | bool | `true` | Enable/disable Ingress policy type |
| networkPolicy.namespaceSelector | object | `{}` | Selects particular namespaces for which all Pods are allowed as ingress sources |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podEnv | list | `[]` |  |
| podLabels | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| priorityClassName | string | `""` | Use this option to set custom PriorityClass to the created deployment ref: https://kubernetes.io/docs/concepts/scheduling-eviction/pod-priority-preemption/#priorityclass |
| readinessProbe.enabled | bool | `true` |  |
| readinessProbe.exec.command | list | `[]` |  |
| readinessProbe.failureThreshold | int | `3` |  |
| readinessProbe.httpGet.httpHeaders | list | `[]` |  |
| readinessProbe.httpGet.path | string | `"/"` |  |
| readinessProbe.httpGet.port | int | `3001` |  |
| readinessProbe.httpGet.scheme | string | `"HTTP"` |  |
| readinessProbe.initialDelaySeconds | int | `10` |  |
| readinessProbe.periodSeconds | int | `10` |  |
| readinessProbe.successThreshold | int | `1` |  |
| readinessProbe.timeoutSeconds | int | `1` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| service.annotations | object | `{}` |  |
| service.nodePort | string | `nil` |  |
| service.port | int | `3001` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `false` |  |
| serviceAccount.name | string | `""` |  |
| serviceMonitor.additionalLabels | object | `{}` | Additional labels to add to the ServiceMonitor |
| serviceMonitor.annotations | object | `{}` | Additional annotations to add to the ServiceMonitor |
| serviceMonitor.enabled | bool | `false` |  |
| serviceMonitor.interval | string | `"60s"` | Scrape interval. If not set, the Prometheus default scrape interval is used. |
| serviceMonitor.metricRelabelings | list | `[]` | Prometheus [MetricRelabelConfigs] to apply to samples before ingestion |
| serviceMonitor.namespace | string | `nil` | Namespace where the ServiceMonitor resource should be created, default is the same as the release namespace |
| serviceMonitor.relabelings | list | `[]` | Prometheus [RelabelConfigs] to apply to samples before scraping |
| serviceMonitor.scheme | string | `nil` | Scheme to use when scraping, e.g. http (default) or https. |
| serviceMonitor.scrapeTimeout | string | `"10s"` | Timeout if metrics can't be retrieved in given time interval |
| serviceMonitor.selector | object | `{}` | Prometheus ServiceMonitor selector, only select Prometheus's with these labels (if not set, select any Prometheus) |
| serviceMonitor.tlsConfig | object | `{}` | TLS configuration to use when scraping, only applicable for scheme https. |
| strategy.type | string | `"Recreate"` |  |
| tolerations | list | `[]` |  |
| useDeploy | bool | `true` |  |
| volume.accessMode | string | `"ReadWriteOnce"` |  |
| volume.enabled | bool | `true` |  |
| volume.existingClaim | string | `""` |  |
| volume.size | string | `"4Gi"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
