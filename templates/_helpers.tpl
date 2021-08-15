{{- define "labels.frontend" -}}
app: guestbook
tier: frontend
{{- end }}

{{- define "labels.redis-master" -}}
app: {{ .Values.master.labels.app}}
role: {{ .Values.master.labels.role}}
tier: {{ .Values.master.labels.tier}}
{{- end }}

{{- define "labels.redis-slave" -}}
app: {{ .Values.slave.labels.app}}
role: {{ .Values.slave.labels.role}}
tier: {{ .Values.slave.labels.tier}}
{{- end }}

{{- define "resource.pod-request" -}}
requests:
  cpu: 100m
  memory: 100Mi
{{- end }}