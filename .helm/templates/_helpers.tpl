{{/* vim: set filetype=mustache: */}}

{{/*
  Helm templates
  Usage example: {{ include "common.labels" (dict "Global" $ "Component" "your_component_here") }}
*/}}

{{- define "common.images.image" -}}
{{- printf "%s:%s" .Values.base.image.repository (default "latest" .Values.base.image.tag) -}}
{{- end -}}

{{- define "common.labels" -}}
app: {{ .Global.Release.Name }}
component: {{ .Component }}
project: {{ .Global.Release.Name }}
{{- end -}}

{{- define "common.names.full" -}}
{{- if .Global.Values.base.fullNameOverride -}}
{{- .Global.Values.base.fullNameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Global.Release.Name .Component | trunc 63 | trimSuffix "-" }}
{{- end -}}
{{- end -}}
