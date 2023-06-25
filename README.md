# Uptime-Kuma Helm Chart

[![License](https://img.shields.io/badge/License-GPL--3.0-blue.svg)](https://opensource.org/license/gpl-3-0)
[![Support](https://img.shields.io/badge/Support-Community-yellow)]()
[![Release](https://github.com/dirsigler/uptime-kuma-helm/actions/workflows/release.yaml/badge.svg?branch=main)](https://github.com/dirsigler/uptime-kuma-helm/actions/workflows/release.yaml)
[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/uptime-kuma)](https://artifacthub.io/packages/search?repo=uptime-kuma)

This is a Helm Chart for the awesome [Uptime-Kuma](https://github.com/louislam/uptime-kuma) project.
Please be advised that the Helm Chart my not fulfill all needs and is work-in-progress.

## 🚀 Deployment

[Helm](https://helm.sh) must be installed to use the charts. Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

    helm repo add uptime-kuma https://helm.irsigler.cloud

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages. You can then run `helm search repo uptime-kuma` to see the charts.

To install the uptime-kuma chart:

    helm upgrade my-uptime-kuma uptime-kuma/uptime-kuma --install --namespace monitoring --create-namespace

To uninstall the chart:

    helm delete my-uptime-kuma --namespace monitoring

## ⚙️ Configuration

To get an overview of the configurable and default Values check out the Chart specific [README](./charts/uptime-kuma/README.md).

## 📝 License

[GNU General Public License version 3](./LICENSE)
