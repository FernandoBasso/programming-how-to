# Emacs Searching and Finding

Tips for working in a project, workspace or a directory and you want to find files and search the contents of files.

## grep

In emacs, do `M-x grep RET` followed by `'case.*of'`. Examples of matches would be:

```
grep --color -nH --null -e 'case.*of' *.hs
fibs-facts.hs5:  q : (case ls of
fns-using-folds.hs107: case f x of
```

Note that `grep` is using the `-e` option, which is the short option for `--regexp`.

Show more context around matching lines. Command:

```
M-x grep RET
grep --color -nH --null -C 2 -e 'case.*of' *.hs
```

```
grep --color -nH --null -C 2 -e 'case.*of' *.hs
e04-fibs-facts.hs 3-myScanl :: (a -> b -> a) -> a -> [b] -> [a]
e04-fibs-facts.hs 4-myScanl f q ls =
e04-fibs-facts.hs 5:  q : (case ls of
e04-fibs-facts.hs 6-         [] -> []
e04-fibs-facts.hs 7-         x:xs -> myScanl f (f q x) xs)
--
e05-fns-using-folds.hs 105-myFilter :: (a -> Bool) -> [a] -> [a]
e05-fns-using-folds.hs 106-myFilter f = foldr (\x acc ->
e05-fns-using-folds.hs 107:                      case f x of
e05-fns-using-folds.hs 108-                        True -> x : acc
e05-fns-using-folds.hs 109-                        False -> acc) []
```

Note we have to add `-C 2` **before** `-e`.
