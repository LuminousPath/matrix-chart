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

Some documentation is available in values.yaml, and a complete configuration guide is coming soon.

Choose one of the two options below to install the chart.

### Chart Repository (recommended)

This chart is published to my Helm chart repository at https://dacruz21.github.io/helm-charts. To install this chart:

1. Create an empty chart to hold your configuration

    ```shell script
    helm create mychart
    cd mychart
    ```

1. Add this chart to your chart's dependencies by editing `Chart.yaml` and adding the following lines:

    ```yaml
    dependencies:
      - name: matrix
        version: 2.8.0
        repository: https://dacruz21.github.io/helm-charts
    ```

1. Run `helm dependency update` to download the chart into the `charts/` directory.

1. Configure the chart by editing `values.yaml`, adding a `matrix:` object, and adding any config overrides under this object.

1. Deploy your customized chart with `helm install mychart .`

### Git

You can also clone this repo directly and override the values.yaml provided. To do so, run the following commands:

```shell script
git clone https://github.com/dacruz21/matrix-chart.git
cd matrix-chart
helm dependency update
helm install matrix .
```

