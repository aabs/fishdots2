<h1 align="center">Welcome to fishdots2 👋</h1>
<p>
  <img alt="Version" src="https://img.shields.io/badge/version-1.2.3-blue.svg?cacheSeconds=2592000" />
    <a href="https://twitter.com/aabs" target="_blank">
          <img alt="Twitter Follow" src="https://img.shields.io/twitter/follow/aabs?label=Follow&style=social">
  </a>
</p>

> A ground-up rewrite of the Fishdots framework.

## Install

```sh
fisher add aabs/fishdots2
```

## Author

👤 **Andrew Matthews**

* Website: aabs.github.io
* Twitter: [@aabs](https://twitter.com/aabs)
* Github: [@aabs](https://github.com/aabs)
* LinkedIn: [@andrewmatthews](https://linkedin.com/in/andrewmatthews)

## Show your support

Give a ⭐️ if this project helped you!

## Rationale

Fishdots worked on creating in-memory function definitions, which was fine for a
while.  Eventuakky, the sheer number of function definitions of the framework
and all the plugins grew so large that startup time was really starting to lag.
To work around this issue, fish shell has an autoloading feature that will run
functions by performing a lookup on fish script files of the same name in
`$XDG_CONFIG_HOME/fish/functions`.  The minimum rewrite is therefore to extract
every function into a file of its own.

## Plans

While I'm rewriting everything, I plan to do some tidying up and start to impose
some more rigid naming conventions.  I will also, at the same time, start to
standardise data storage around the use of SQLite v3 where common data storage
between plugins is warranted.

## Conventions

1. All functions start with `fd2_`.  All private functions MUST start with
`__fd2_`.
2. when supplying multiple strings to function in fd2, always use the colon `:`
   separator. i.e. `some_function 'hello world:a description string to be passed
   through'`.  Currently, fish will pass a list, separating on spaces, which
   makes functions that take multiple string arguments that contain spaces quite
   difficult.
<!--  vim: set ts=2 sw=2 tw=80 et foldmethod=syntax foldlevelstart=20 : -->

