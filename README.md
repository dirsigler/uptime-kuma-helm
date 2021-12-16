> Forked from https://chrisbsmith.github.io/uptime-kuma-helm

# Uptime-Kuma Helm Chart

[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/uptime-kuma)](https://artifacthub.io/packages/search?repo=uptime-kuma)

This is a Helm Chart for the awesome [Uptime-Kuma](https://github.com/louislam/uptime-kuma) project.
Please be advised that the Helm Chart my not fulfill all needs and is work-in-progress.

## Usage

[Helm](https://helm.sh) must be installed to use the charts. Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

    helm repo add uptime-kuma https://chrisbsmith.github.io/uptime-kuma-helm

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages. You can then run `helm search repo uptime-kuma` to see the charts.

To install the uptime-kuma chart:

    helm upgrade my-uptime-kuma uptime-kuma/uptime-kuma --install --namespace monitoring --create-namespace

To uninstall the chart:

    helm delete my-uptime-kuma --namespace monitoring
