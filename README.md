## Usage

[Helm](https://helm.sh) must be installed to use the charts.  Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

  helm repo add uptime-kuma https://dirsigler.github.io/uptime-kuma-helm
If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages.  You can then run `helm search repo
uptime-kuma` to see the charts.

To install the uptime-kuma chart:

    helm install my-uptime-kuma uptime-kuma/uptime-kuma

To uninstall the chart:

    helm delete my-uptime-kuma
