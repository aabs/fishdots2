# FishDots 2

A ground-up rewrite of the Fishdots framework.

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
