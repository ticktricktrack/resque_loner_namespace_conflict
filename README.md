## Minimized example for conflict between resque_loner and redis-namespace

With resque_loner (1.2.1) and redis-namespace (1.3.1) I get errors whenever I try to enqueue any jobs. Does not happen with redis-namespace 1.3.0

[https://github.com/jayniz/resque-loner](https://github.com/jayniz/resque-loner)

[Issue on redis-namespace](https://github.com/resque/redis-namespace/issues/65)

To reproduce the failure either run

```
rake spec
##or
rails console
Resque.enqueue(Dummy)
```