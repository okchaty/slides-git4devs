### Repository

#### Tipos de Repositorios

- Repositorio Local
- Repositorio Bare(Remote)

#VSLIDE

### Repositorio local

#### Create Repo

```bash
git init <<path>>
```

#### Clone Repo

```bash
git clone <<ssh remote/https>>
```

#VSLIDE

### Repositorio Bare

#### Create Repo (local|server)

```bash
git init --bare <<path.git>>
```

#### Add repository remote:

##### create key ssh

```bash
  ssh-keygen -t rsa -C "your_email@youremail.com"
```

##### Add repository

```bash
  git remote add origin <<ssh remote/https>>
```

#VSLIDE

### Management Remote

#### Pull(Download):

```bash
  git pull origin <branch>
```

#### Push(Upload):

```bash
  git push origin <branch>
```
