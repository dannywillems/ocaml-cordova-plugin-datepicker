# ocaml-cordova-plugin-datepicker

[![LGPL-v3 licensed](https://img.shields.io/badge/license-LGPLv3-blue.svg)](https://raw.githubusercontent.com/dannywillems/ocaml-cordova-plugin-datepicker/master/LICENSE)
[![Build Status](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-datepicker.svg?branch=master)](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-datepicker)

Binding to
[cordova-plugin-datepicker](https://github.com/VitaliiBlagodir/cordova-plugin-datepicker)

## What does cordova-plugin-datepicker do?

```
This is a combined version of DatePicker iOS and Android and Windows plugin for Cordova/Phonegap 4.0.
```

Source: [cordova-plugin-datepicker](https://github.com/VitaliiBlagodir/cordova-plugin-datepicker)

## How to install and compile your project by using this plugin?

This plugin depends on [ocaml-js-stdlib](https://github.com/dannywillems/ocaml-js-stdlib): you need to pin it before.

Don't forget to switch to a compiler **>= 4.03.0**.
```Shell
opam switch 4.03.0
```

If you add
[ocaml-cordova-plugin-list](https://github.com/dannywillems/ocaml-cordova-plugin-list)
as opam package provider, you can use
```
opam install cordova-plugin-datepicker
```

Else, you can use opam by pinning the repository with
```Shell
opam pin add cordova-plugin-datepicker https://github.com/dannywillems/ocaml-cordova-plugin-datepicker.git
```

and to compile your project, use
```Shell
ocamlfind ocamlc -c -o [output_file] -package gen_js_api -package ocaml-js-stdlib -package cordova-plugin-datepicker [...] -linkpkg [other arguments]
```

Don't forget to install cordova-plugin-datepicker with
```Shell
cordova plugin add cordova-plugin-datepicker
```

## How to use ?

* See the [official documentation](https://github.com/VitaliiBlagodir/cordova-plugin-datepicker)
