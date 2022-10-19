# nextgenconnect
![Screenshot](images/k8s-nextgenconnect.png)
Deploys a nextgenconnect deployment with a mysql database backend to be hosted on Kubernetes.

For information about Mirth container: refer to https://github.com/nextgenhealthcare/connect

## Prerequistes
* Kubernetes 1.21+
* cert-manager
* external-dns
* Traefik

## Install
```kubectl apply -f k8s/deployment.yaml```

## Starting NextGen Connect
Once NextGen Connect has been installed, there are several ways to connect to launch the NextGen Connect Administrator. On a Windows installation, there is a NextGen Connect Administrator item in the Start Menu which launches the application directly.

If the option is not available, you can connect to the NextGen Connect Administrator launch page which by default should be available at `http://[server address]:8080` (i.e. `http://localhost:8080`). It is recommended to use the Administrator Launcher to start the Administrator, which can be downloaded by clicking on the Download Administrator Launcher button. Clicking the Launch NextGen Connect Administrator button will download the Java Web Start file for your server. Opening the file with the Administrator Launcher connects you to the server, which will be listening on `https://[server address]:8443` (i.e. `https://localhost:8443`).

If running a new installation, the default username and password for the login screen is admin and admin. This should be changed immediately for security purposes.

If you are launching the administrator for the first time, you will notice that the libraries for the NextGen Connect Administrator will be loaded. This feature allows you run the Administrator from any remote NextGen Connect server without having to download and install a separate client.

You may also notice a security warning when starting the administrator (dialog box depends on browser being used). This is because by default NextGen Connect creates a self-signed certificate for its web server. For now click Run to continue launching the administrator, but check out the User Guide for instructions on how to replace the certificate.

