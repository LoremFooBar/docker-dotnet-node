# Docker .NET SDK + Node.js + Yarn

## Tags

The tags represent .NET SDK and Node versions.

- `6.0-18.x` - latest .NET 6.0 SDK and latest Node 18.x.
- `6.0-20.x` - latest .NET 6.0 SDK and latest Node 20.x.
- `7.0-18.x` - latest .NET 7.0 SDK and latest Node 18.x.
- `7.0-20.x` - latest .NET 7.0 SDK and latest Node 20.x.

## Build

```
docker build --pull --rm -t loremfoobar/dotnet-node:<dotnetVer-nodeVer> .
```

## Push

```
docker push loremfoobar/dotnet-node:<dotnetVer-nodeVer>
```
