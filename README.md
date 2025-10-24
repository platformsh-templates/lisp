> [!WARNING]
> **This repository is no longer maintained by our internal teams.**  
> The template is provided *as is* and will not receive updates, bug fixes, or new features.  
> You are welcome to contribute on it or fork the repository and modify it for your own use.
> To deploy this template on [Upsun](https://www.upsun.com), you can use the command [upsun project:convert](https://docs.upsun.com/administration/cli/reference.html#projectconvert)
> on this codebase to convert the existing `.platform.app.yaml` configuration file to the [Upsun Flex format](https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html).

# Common Lisp Example for Platform.sh

This template provides the most basic configuration for running a Lisp Huchentoot web server for Platform.sh.  It can be used to build a very rudimentary application but is intended primarily as a documentation reference.  It is meant to be a starting point and can be modified to fit your own needs.

This template builds a simple Lisp Hunchentoot web server for Platform.sh.  It includes a minimalist application  for demonstration, but you are free to alter it as needed.

Hunchentoot is a web server written in Common Lisp and at the same time a toolkit for building dynamic websites.

## Features

* Lisp 1.5
* Automatic TLS certificates

## Customizations

The following files and additions make the the example work.  If using this project as a reference for your own existing project, replicate the changes below to your project.

* The `.platform.app.yaml`, `.platform/services.yaml`, and `.platform/routes.yaml` files have been added.  These provide Platform.sh-specific configuration and are present in all projects on Platform.sh.  You may customize them as you see fit.


## References

* [Hunchentoot](https://edicl.github.io/hunchentoot/)
* [Lisp on Platform.sh](https://docs.platform.sh/languages/lisp.html)
