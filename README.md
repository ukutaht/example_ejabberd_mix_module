Example of issue where custom modules are not visible to ejabberd when
embedded as a mix dependency. In this elixir application, we have ejabberd as
a dependency, a module called `ejabberd_auth_custom` and the ejabberd configuration
tries to use `custom` as the auth method.

To run:

```
$ mix run --no-halt

11:21:50.755 [info]  Ignoring ejabberd logger options, using Elixir Logger.

11:21:51.640 [error] ignoring option 'auth_method' with invalid value: [custom]

11:21:51.781 [info]  FQDN used to check DIGEST-MD5 SASL authentication: <<"ukus-mbp">>

11:21:51.795 [info]  ejabberd 16.08.0 is started in the node nonode@nohost
```

Problem:

Custom auth module is not recognised by ejabberd.

Expected result:

Ejabberd uses `ejabberd_auth_custom` module as the auth module.
