### Generate a new package

```
npx nx generate @nrwl/js:library is-multiple --publishable --importPath @cs4dev/is-multiple
```

### Change publish target

```json
{
  "publish": {
    "executor": "nx:run-commands",
    "outputs": [],
    "options": {
      "command": "chmod +x publish.sh && ./publish.sh"
    },
    "dependsOn": ["build"]
  }
}
```

### Add Registry to Package.json

```json
{
  "repository": "https://github.com/igloocompany/cslim.git",
  "publishConfig": {
    "registry": "https://npm.pkg.github.com/cs4dev"
  }
}
```
