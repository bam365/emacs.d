# Initial install

You need emacs >= 24.0. The `emacs` that comes with OS X is *old*, so install a newer one with
`brew cask install emacs`.

On the first emacs run:

Refresh packages:

`M-x package-refresh-content`

Install `use-package`

`M-x package-install<RET>use-package<RET>`

Install `use-package-ensure`

`M-x package-install<RET>use-package-ensure<RET>`

Then restart emacs, it will automatically download all needed packages and you're good to go.
