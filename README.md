# Matrix Chart

A Helm chart for deploying a Matrix homeserver stack in Kubernetes. Forked from [dacruz21/matrix-chart](https://github.com/dacruz21/matrix-chart)

## Features

- Latest version of Synapse
- (Optional) Latest version of Riot Web
- (Optional) Choice of SMTP relay or external mail server for email notifications
- (Optional) Coturn TURN server for VoIP calls
- (Optional) PostgreSQL cluster via stable/postgresql chart
- (Optional) nginx server to serve well-known delegation endpoint
- (Optional) [matrix-org/matrix-appservice-irc](https://github.com/matrix-org/matrix-appservice-irc) IRC bridge
- (Optional) [tulir/mautrix-whatsapp](https://github.com/tulir/mautrix-whatsapp) WhatsApp bridge
- (Optional) [Half-Shot/matrix-appservice-discord](https://github.com/Half-Shot/matrix-appservice-discord) Discord bridge
- (Optional) [Awesome-Technologies/synapse-admin](https://github.com/Awesome-Technologies/synapse-admin) Synapse Admin Page
- (Optional) [ZerataX/matrix-registration](https://github.com/ZerataX/matrix-registration) registration invitation codes
- Fully configurable via values.yaml
- Ingress definition for federated Synapse and Riot

## Installation

Some documentation is available in values.yaml, and a complete configuration guide is available on the original package owner's repo.

### Git

You can also clone this repo directly and override the values.yaml provided. To do so, run the following commands:

```shell script
git clone https://github.com/dacruz21/matrix-chart.git
cd matrix-chart
helm dependency update
helm install matrix .
```

