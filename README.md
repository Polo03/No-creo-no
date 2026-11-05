# Servidor Roleplay ESX Legacy · Recipe para txAdmin

Repositorio listo para desplegar un servidor de roleplay de FiveM con **ESX Legacy** directamente desde **txAdmin**, sin subir archivos a mano.

## Qué instala

- **ESX Legacy core**: es_extended, identidad, multipersonaje, inventario, skin, notificaciones, menús…
- **ESX Legacy addons**: trabajos (policía, ambulancia, mecánico…), concesionario, sociedades, facturas…
- **Standalone**: oxmysql, ox_lib, pma-voice (voz), bob74_ipl (interiores)
- **Base de datos**: importa automáticamente el SQL de ESX
- **Tus recursos** de `resources/[custom]` y el `server.cfg` de este repo

## Desplegar desde txAdmin

1. Abre txAdmin y empieza la configuración de un servidor nuevo (**Setup**), o en un servidor existente ve a **Settings → FXServer → Reset** para volver al asistente.
2. En el tipo de despliegue elige **Remote URL Template**.
3. Pega esta URL:

   ```
   https://raw.githubusercontent.com/Polo03/No-creo-no/main/recipe.yaml
   ```

4. Sigue el asistente: pon tu **License Key** (de [portal.cfx.re](https://portal.cfx.re)) y los datos de **MySQL/MariaDB**. txAdmin crea la base de datos y rellena el `server.cfg`.
5. Pulsa **Run Recipe**, espera a que termine y luego **Save & Run Server**.

> Necesitas un servidor MySQL o MariaDB funcionando antes de lanzar la recipe.

## Añadir tus propios scripts

Mete cada script en su carpeta dentro de `resources/[custom]/` y haz push. Todo lo que haya ahí se arranca con `ensure [custom]`. En `rp_bienvenida` tienes un ejemplo mínimo.

En un servidor ya desplegado la recipe no se vuelve a ejecutar: copia los scripts nuevos a la carpeta `resources/[custom]` del servidor (o usa `git pull` si lo tienes clonado) y reinicia desde txAdmin.

## Ajustes útiles en `server.cfg`

- `setr esx:locale "es"`: idioma de ESX
- `sv_enforceGameBuild 3258`: versión del juego (DLCs disponibles)
- `discord:botToken` / `whitelist:webhook`: whitelist por Discord (opcional)
- Nombre, descripción y tags del servidor se ponen en el **Cfx Portal**, no aquí.
