# `piral-ng-common`

This is a required supplemental package that brings auxiliary functionality to your Angular application embedded in a Piral instance using the `piral-ng` converter.

The package is supplemental as it depends on the version of Angular (in contrast to `piral-ng`, which does not depend on the version of Angular).

## Installation

By default the latest version is installed, which might not be the correct one. If this is the case, just install a specific version. For instance, doing the following installs an Angular 15 compatible version of `piral-ng-common`:

```sh
npm i piral-ng-common@^15
```

Make sure to keep this up-to-date / in alignment with the used version of Angular.

## Best Practices

Put this dependency in your `importmap` to opt-in to sharing it at runtime:

```json
{
    "importmap": {
        "imports": {
            "piral-ng-common": ""
        }
    }
}
```

If you use standalone pilets with distributed sharing then the `importmap` section of a pilet is the right place. If this is centrally shared then we also recommend to put in there - just in case somebody wants to opt-out / use `fromNg`
