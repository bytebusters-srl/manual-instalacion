# Plantilla de Manual de Instalación - Estándar ISO/IEC/IEEE 15289:2024

## Logo
![Logo Byte Busters](assets/img/bytebusters/logo_horizontal.png)

## Insignias
[![LaTeX](https://img.shields.io/badge/LaTeX-Project-008080.svg?style=flat&logo=latex&logoColor=white)](https://www.latex-project.org/)
[![License: CC0-1.0](https://img.shields.io/badge/License-CC0_1.0-lightgrey.svg)](http://creativecommons.org/publicdomain/zero/1.0/)
[![Deployment: CI/CD](https://img.shields.io/badge/Deployment-Ready-success)](https://github.com/)

## Introducción
Este repositorio proporciona una infraestructura técnica en **LaTeX** diseñada para generar **Manuales de Instalación y Configuración** que cumplan estrictamente con los estándares internacionales de despliegue **ISO/IEC/IEEE 15289:2024**. Está optimizado para los ingenieros de infraestructura y DevOps de **Byte Busters S.R.L.**

## Características de Infraestructura
* **Estructura de Despliegue:** Cumple con el flujo lógico de instalación: Requisitos, Preparación, Ejecución, Post-Instalación y Pruebas de Humo.
* **Componentes de Riesgo:** Implementa macros visuales críticas como "Punto de No Retorno" para operaciones destructivas en bases de datos.
* **Control de Calidad:** Entornos LaTeX listos para validación de hardware (Tablas de Pre-requisitos) y validación final (Checklist Go-Live).
* **Trazabilidad de Auditoría:** Encabezados centralizados que especifican el *Ambiente Destino* (Producción, Testing) y pies de página enlazados a la versión del empaquetado del software.

## Tecnología Base
* **Lenguaje de Marcado:** LaTeX.
* **Motor de Compilación:** `pdflatex` con soporte interactivo para código de terminal.
* **Automatización:** `latexmk` para gestión de la carpeta `/build`.

## Instalación y Compilación de la Guía
Para generar el manual en PDF antes de una ventana de mantenimiento o despliegue:

```bash
git clone [https://github.com/dpardo23/manual-usuario.git](https://github.com/dpardo23/manual-usuario.git)
cd manual-usuario

# Compilar la guía de instalación
make all

# Limpiar temporales
make clean
```

## Uso / Componentes Específicos
Utilice las macros incluidas para alertar al operador de infraestructura durante los pasos críticos:

```latex
% Tabla de validación previa
\begin{TablaPrerequisitos}
Motor DB & PostgreSQL v14 o superior & $\square$ \\
\hline
Red & Puerto 8080 liberado en Firewall & $\square$ \\
\hline
\end{TablaPrerequisitos}

% Alerta de destrucción de datos o cambios críticos
\begin{PuntoNoRetorno}
Ejecutar el siguiente comando reiniciará el clúster de producción.
\end{PuntoNoRetorno}

% Verificación final de puesta en marcha
\begin{ChecklistGoLive}
    \item Variables de entorno de producción seteadas.
    \item Cuentas temporales de instalación eliminadas.
\end{ChecklistGoLive}
```

## Estructura del Documento Maestro (`main.tex`)
* **Consistencia y Trazabilidad:** Matriz de compatibilidad y ubicación de Logs del sistema operativo.
* **Requisitos del Sistema:** Hardware, Software y Red requeridos (Apoyado en IEEE 830).
* **Preparación del Entorno:** Backups de seguridad y limpieza.
* **Procedimiento de Instalación:** Paso a paso cronológico con capturas anotadas.
* **Configuración Post-Instalación:** Setup de credenciales y `.env`.
* **Pruebas de Humo:** Verificación rápida de disponibilidad.
* **Solución de Problemas:** Tabla de errores comunes (Troubleshooting).

## Hoja de Ruta
* [ ] Integración de diagramas de flujo automatizados para toma de decisiones durante errores de instalación.
* [ ] Generación automática de versiones a partir de etiquetas de Git.

## Autores
* **Razón Social:** Byte Busters S.R.L.
* **Ingeniería / Despliegue:** Juan Diego Pardo Pozo
* **Consultor TIS:** Corina Justina Flores Villarroel

## Licencia
Este proyecto se distribuye bajo la licencia CC0 1.0 Universal.
