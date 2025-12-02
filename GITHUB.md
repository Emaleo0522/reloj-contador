# 📤 Subir a GitHub

## Pasos para subir el proyecto

### 1. Crear repositorio en GitHub

1. Ve a [github.com](https://github.com)
2. Inicia sesión con tu cuenta
3. Click en el botón **"+"** (arriba derecha) → **"New repository"**
4. Configuración:
   - **Repository name**: `neon-core-overdrive` (o el nombre que prefieras)
   - **Description**: "Production-ready P2P multiplayer game"
   - **Public** o **Private** (tu elección)
   - **NO marques** "Initialize with README" (ya tenemos uno)
5. Click en **"Create repository"**

### 2. Conectar tu repositorio local con GitHub

Copia el URL que GitHub te muestra (será algo como `https://github.com/Emaleo05/neon-core-overdrive.git`)

Luego ejecuta estos comandos en la terminal:

```bash
cd /home/pc004/neon-core-game

# Conectar con GitHub (reemplaza la URL con la tuya)
git remote add origin https://github.com/TU_USUARIO/neon-core-overdrive.git

# Verificar que se agregó correctamente
git remote -v

# Subir el código
git push -u origin main
```

### 3. Autenticación

GitHub te pedirá autenticación. Tienes dos opciones:

#### Opción A: Personal Access Token (Recomendado)

1. Ve a GitHub → Settings → Developer settings → Personal access tokens → Tokens (classic)
2. Click "Generate new token (classic)"
3. Dale un nombre: "Neon Core Game"
4. Selecciona scope: **repo** (marca todas las casillas de repo)
5. Click "Generate token"
6. **COPIA EL TOKEN** (solo se muestra una vez)
7. Cuando Git te pida password, pega el token

#### Opción B: GitHub CLI

```bash
# Instalar GitHub CLI
sudo apt install gh

# Autenticar
gh auth login

# Seguir las instrucciones en pantalla
```

### 4. Verificar que se subió

1. Ve a `https://github.com/TU_USUARIO/neon-core-overdrive`
2. Deberías ver todos tus archivos

## 🚀 Deploy automático desde GitHub

### Conectar GitHub con Vercel

1. Ve a [vercel.com](https://vercel.com)
2. Click "Import Project"
3. Selecciona "Import Git Repository"
4. Conecta tu cuenta de GitHub
5. Selecciona el repositorio `neon-core-overdrive`
6. Click "Deploy"
7. ¡Listo! 🎉

### Ventajas del deploy desde GitHub

- ✅ **Auto-deploy**: Cada push a `main` despliega automáticamente
- ✅ **Preview deploys**: Cada branch/PR tiene su propia URL de preview
- ✅ **Rollback fácil**: Puedes volver a versiones anteriores
- ✅ **Sincronización**: Git es la fuente de verdad

## 📋 Comandos útiles de Git

```bash
# Ver status
git status

# Ver log de commits
git log --oneline

# Hacer cambios y subir
git add .
git commit -m "Tu mensaje aquí"
git push

# Clonar en otra máquina
git clone https://github.com/TU_USUARIO/neon-core-overdrive.git
```

## 🔄 Workflow típico

1. Haces cambios en el código
2. `git add .`
3. `git commit -m "Descripción del cambio"`
4. `git push`
5. Vercel detecta el push y despliega automáticamente

## ❓ Troubleshooting

### Error: "remote origin already exists"
```bash
git remote remove origin
git remote add origin TU_URL
```

### Error: "failed to push"
```bash
git pull origin main --rebase
git push
```

### Ver qué remote está configurado
```bash
git remote -v
```

## 🎯 Tu configuración actual

- **Usuario Git**: Emaleo05
- **Email Git**: emaleo0522@gmail.com
- **Rama**: main
- **Archivos**: 8 archivos listos para subir

¡Todo está listo para hacer `git push`! 🚀
