# NimCast

A Nim wrapper for [KallistiOS](https://github.com/KallistiOS/KallistiOS).

Currently, it seems this may not be viable until Nim supports the SH-4 CPU.

---

## Installation

```shell
nimble install
```

---

## Template project

The `tests` directory includes files for a template project/demo and contains all the files you need to build a nim project for the DreamCast, assuming you have the [KOS library and toolchain installed](https://dreamcast.wiki/Getting_Started_with_Dreamcast_development#Setting_up_the_environment_settings). To build an iso, make sure you have [`mkdcdisc` built and installed](https://dreamcast.wiki/Getting_Started_with_Dreamcast_development#Burning_an_example_program_to_CD-R), navigate to `tests` and run `./nim2cdi`

---

## Contributing

To contribute, you can fork the main branch for now. I'll probably set up a dev branch which will be used for submitting pull requests.

---

## License

This wrapper for libDragon is released into the public domain where applicable, otherwise, refer to the Unlicense, in `LICENSE`.
