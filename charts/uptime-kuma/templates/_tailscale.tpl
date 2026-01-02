{{/*
Tailscale sidecar container definition
*/}}
{{- define "uptime-kuma.tailscale-container" -}}
- name: tailscale
  restartPolicy: Always #set as sidecar
  imagePullPolicy: {{ .Values.tailscale.image.pullPolicy }}
  image: "{{ .Values.tailscale.image.repository }}:{{ .Values.tailscale.image.tag }}"
  securityContext:
    {{- if .Values.tailscale.userspace }}
    runAsUser: 1000
    runAsGroup: 1000
    {{- else }}
    capabilities:
      add:
        - NET_ADMIN
    {{- end }}
  env:
    #https://tailscale.com/kb/1282/docker
    #https://tailscale.com/kb/1185/kubernetes
    #https://github.com/tailscale/tailscale/blob/main/docs/k8s/sidecar.yaml
    #List options:
    #https://github.com/tailscale/tailscale/blob/main/cmd/containerboot/main.go
    - name: TS_HOSTNAME
      value: {{ .Values.tailscale.hostname | quote}}
    #Disable K8s detection and integration
    #https://github.com/tailscale/tailscale/issues/8188
    - name: KUBERNETES_SERVICE_HOST
      value: ""
    #Enable MagicDNS
    - name: TS_ACCEPT_DNS
      value: "true"
    #Authenticate only once
    - name: TS_AUTH_ONCE
      value: "true"
#            # Store the state in a k8s secret
#            - name: TS_KUBE_SECRET
#              value: "{{ include "uptime-kuma.fullname" . }}-tailscale-auth"
    - name: TS_USERSPACE
      value: {{ .Values.tailscale.userspace | quote }}
    - name: TS_DEBUG_FIREWALL_MODE
      value: {{ .Values.tailscale.debugFirewallMode | quote }}
    - name: TS_AUTHKEY
      valueFrom:
        secretKeyRef:
          name: "{{ include "uptime-kuma.fullname" . }}-tailscale-auth"
          key: TS_AUTHKEY
          optional: true
  {{- if .Values.volume.enabled }}
    #store the state on disk
    - name: TS_STATE_DIR
      value: "/usr/src/state"
  volumeMounts:
    - mountPath: "/usr/src/state"
      name: storage
      {{- if .Values.tailscale.stateSubPath }}
      subPath: {{ .Values.tailscale.stateSubPath }}
      {{- end }}
  {{- end -}}
{{- end -}}
