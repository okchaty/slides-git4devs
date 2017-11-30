### Personalizando Git

- Git Config
- Git Ignore

#VSLIDE

### Git Config

* [Example](https://github.com/luismayta/dotfiles/blob/develop/conf/app/gitconfig)

#### config

```bash
git config -e
git config --global -e
```

#VSLIDE

### Git Ignore

* [Example](https://github.com/luismayta/dotfiles/blob/develop/conf/app/gitignore)

#### Ignore File

```bash
echo "*.pyc"  >> .gitignore
echo "*.tar.gz"  >> .gitignore
echo "*.log"  >> .gitignore
```