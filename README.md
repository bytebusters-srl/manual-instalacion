# Plantilla de Manual de Instalación - Estándar ISO/IEC/IEEE 15289:2024

## Logo
![Logo Byte Busters](assets/img/bytebusters/logo_horizontal.png)

## Insignias
[![LaTeX](https://img.shields.io/badge/LaTeX-Project-008080.svg?style=flat&logo=latex&logoColor=white)](https://www.latex-project.org/)
[![License: CC0-1.0](https://img.shields.io/badge/License-CC0_1.0-lightgrey.svg)](http://creativecommons.org/publicdomain/zero/1.0/)
[![Standard: ISO 15289](https://img.shields.io/badge/Standard-ISO/IEC/IEEE_15289-blue)](https://www.iso.org/standard/83674.html)

## Perfil de Github - Introducción
Este repositorio proporciona una infraestructura técnica en **LaTeX** diseñada para generar **Manuales de Instalación y Configuración** que cumplan estrictamente con los estándares internacionales de despliegue **ISO/IEC/IEEE 15289:2024**. Está optimizado para los equipos de infraestructura y DevOps de la empresa **Byte Busters S.R.L.** en el marco de la Facultad de Ciencias y Tecnología de la UMSS.

## Características
* **Estructura de Despliegue:** Cumple con el flujo lógico de instalación exigido por la norma: Requisitos, Preparación, Ejecución, Post-Instalación y Pruebas de Humo.
* **Identidad Visual y Técnica:** Tipografías corporativas preconfiguradas y resaltado específico para rutas de archivos y comandos de terminal.
* **Diseño de Layout:** Márgenes exactos de 3cm (interno) y 2cm (externo) con interlineado de 1.5, optimizado para trazabilidad de auditorías.
* **Componentes Especializados:** Macros visuales críticas como "Punto de No Retorno", Tablas de Pre-requisitos estandarizadas y Checklists Go-Live.
* **Gestión de Compilación:** Redirección automática de archivos auxiliares a la carpeta `/build` para mantener el directorio limpio.

## Tecnología
* **Lenguaje de Marcado:** LaTeX.
* **Motor de Compilación:** `pdflatex` con soporte interactivo para código de terminal.
* **Automatización:** `latexmk` para gestión de dependencias y `Makefile` para atajos rápidos.
* **Editor Sugerido:** Visual Studio Code con extensión *LaTeX Workshop*.

## Perfil de Github - Habilidades
* **Infrastructure Documentation:** ISO/IEC/IEEE 15289:2024.
* **Deployment Specification:** IEEE 830.
* **Typesetting:** LaTeX, BibTeX.
* **Project Management:** Estructura técnica organizada para Taller de Ingeniería de Software (TIS).

## Instalación
Para utilizar esta plantilla localmente, clona el repositorio y asegúrate de tener una distribución de LaTeX instalada (TeX Live o MiKTeX):

```bash
git clone [https://github.com/dpardo23/manual-usuario.git](https://github.com/dpardo23/manual-usuario.git)
cd manual-usuario
```

## Corre Localmente
Utiliza el `Makefile` o `latexmk` incluido para gestionar el ciclo de vida del documento:

```bash
# Compilar la guía de instalación completa
latexmk -pdf -outdir=build main.tex 

# Limpiar archivos temporales y la carpeta build
make clean
```

## Ejecutando Pruebas
Para validar que el entorno está correctamente configurado (especialmente para los paquetes de tablas avanzadas y comandos), ejecute:
1. `make clean`
2. `make all`
3. Verifique la existencia del PDF en `build/main.pdf`.

## Uso/Ejemplos
La plantilla incluye componentes especiales diseñados para captar la atención del operador de infraestructura según el nivel de riesgo en el despliegue:

```latex
\begin{TablaPrerequisitos}
Motor DB & PostgreSQL v14 o superior & $\square$ \\
\hline
Red & Puerto 8080 liberado en Firewall & $\square$ \\
\hline
\end{TablaPrerequisitos}

\begin{PuntoNoRetorno}
Ejecutar el siguiente comando reiniciará el clúster de producción y borrará los registros locales.
\end{PuntoNoRetorno}

\begin{ChecklistGoLive}
    \item Variables de entorno de producción seteadas.
    \item Cuentas temporales de instalación eliminadas de la base de datos.
\end{ChecklistGoLive}
```

## Variables de Entorno
La configuración del flujo de trabajo se define en `.latexmkrc`:
* `$out_dir = 'build'`: Todos los binarios y archivos temporales se guardan aquí.
* `$pdf_mode = 1`: Fuerza la generación de salida en formato PDF.

## Capturas de Pantalla
El diseño final respeta los siguientes estándares de identidad corporativa y trazabilidad de infraestructura:
* **Encabezados Dinámicos:** Logo de Byte Busters S.R.L. a la izquierda, "Guía de Instalación y Configuración" al centro, y la etiqueta del "Ambiente Destino" (ej. Producción) a la derecha.
* **Pie de Página:** Sincronización de la versión del instalador, correo de soporte técnico y paginación dinámica.
* **Colores Semánticos:** Azul Corporativo (#080852) para elementos primarios, Rojo para Puntos de No Retorno y Gris Claro para comandos y rutas de sistema operativo.

## Documentación
El documento maestro (`main.tex`) está dividido en las secciones obligatorias del estándar de despliegue:
* **Consistencia y Trazabilidad:** Matriz de compatibilidad y ubicación de Logs.
* **Identificación del Sistema:** Nombre del producto, versión y plataformas destino.
* **Requisitos del Sistema:** Hardware, Software y Red requeridos para alojar el software.
* **Preparación del Entorno:** Backups de seguridad del servidor y limpieza.
* **Procedimiento de Instalación:** Paso a paso cronológico con capturas de pantalla anotadas.
* **Configuración Post-Instalación:** Setup de credenciales iniciales y variables `.env`.
* **Pruebas de Humo:** Verificación rápida de disponibilidad de los servicios principales.
* **Solución de Problemas:** Tabla de errores comunes durante la instalación (Troubleshooting).

## Hoja de Ruta
* [ ] Integración de diagramas de flujo automatizados para toma de decisiones durante errores de instalación.
* [ ] Integración de tablas de Requisitos Previos estandarizadas con validación cruzada.
* [ ] Soporte para marcas de agua de "Confidencial" con opacidad inferior al 10%.

## Optimizaciones
* **Trazabilidad Dinámica:** Uso de comandos para mantener coherencia en las versiones documentadas del instalador en todas las hojas.
* **SyncTeX:** Habilitado para navegación bidireccional entre el código fuente y el PDF generado.
* **Tablas Autoajustables:** Implementación de `tabularx` para listas de pre-requisitos dinámicas y consistentes en ancho.

## Relacionado
* Sitio Oficial de la Empresa TIS
* Guía de Estilo ISO/IEC/IEEE 15289:2024

## FAQ

**¿Por qué recibo un error al compilar los iconos de advertencia?**
Asegúrese de tener el paquete `fontawesome5` actualizado. Si el error persiste con el icono del Punto de No Retorno, utilice un equivalente válido como `\faRadiation`.

**¿Cómo cambio el nombre del PDF de salida?**
Modifique la variable `DOCNAME` en el archivo `Makefile`.

## Lecciones
Durante el desarrollo de esta plantilla se priorizó la separación de intereses, moviendo toda la lógica de diseño e infraestructura visual a la carpeta `/config` para que el ingeniero a cargo del despliegue solo deba preocuparse por documentar los pasos técnicos en `/sections`.

## Autores
* **Razón Social:** Byte Busters S.R.L.
* **Representante Legal:** Juan Diego Pardo Pozo
* **Consultor TIS:** Corina Justina Flores Villarroel

## Feedback y Apoyo
Para reportar errores o solicitar soporte técnico durante los despliegues, escriba a: contacto.bytebusters@gmail.com.

## Licencia
Este proyecto se distribuye bajo la licencia CC0 1.0 Universal (Public Domain Dedication). Puedes copiar, modificar y distribuir el trabajo, incluso con fines comerciales, sin pedir permiso.
