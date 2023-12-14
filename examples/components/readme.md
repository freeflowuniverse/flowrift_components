
required vmodules: 
- freeflowuniverse/webcomponents & freeflowuniverse/crystallib:development_db

to run:

```
cd .vmodules
mkdir freeflowuniverse
cd freeflowuniverse
ln -s ../../freeflowuniverse/crystallib/crystallib
ln -s ../../freeflowuniverse/webcomponents/webcomponents
```

to run:
from root of repo
`v -enable-globals -cg -w run examples/components`