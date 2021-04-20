{{/* vim: set filetype=mustache: */}}
{{/*
Shared secret for the whatsapp server
*/}}
{{- define "matrix.whatsapp.as_token" -}}
{{- randAlphaNum 64 -}}
{{- end -}}

{{- define "matrix.whatsapp.hs_token" -}}
{{- randAlphaNum 64 -}}
{{- end -}}
