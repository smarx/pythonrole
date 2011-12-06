This is a simple scaffold for packaging a Python app to run on Windows Azure.

Usage
=====

1. Edit `app.py` to do whatever you want, and add any required modules to
`dependencies.txt`. If this is a web app, be sure to listen on the port
specified in the `PORT` environment variable (and for best results when running
locally, listen on the IP address specified in the `ADDRESS` environment
variable.
2. Run `build.cmd & run.cmd` to build and run the application locally. When
running locally, python.exe must be in the path. (It is not automatically
installed as it is in the cloud.)
3. Run `pack.cmd` to output `PackAndRun.cspkg`. That file, along with
`ServiceConfiguration.cscfg` is what you need to deploy via the Windows Azure
portal (or with some other tool) to get the app running in the cloud.