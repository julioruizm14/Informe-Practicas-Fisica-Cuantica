# Prácticas de Laboratorio - Física Cuántica

Este repositorio contiene los informes, análisis de datos y scripts en R correspondientes a las prácticas de laboratorio de la asignatura de **Física Cuántica** del Grado en Física (Enero 2022).

El objetivo principal es el estudio experimental de fenómenos cuánticos fundamentales utilizando equipamiento de laboratorio y análisis estadístico.

## Contenido del Repositorio

* **`PracticasCuantica (1).pdf`**: Informe completo con marco teórico, metodología experimental y conclusiones detalladas.
* **`practica1.R`**: Script de R utilizado para el análisis de datos, regresiones lineales y generación de gráficas (ggplot2).

## Experimentos Realizados

El trabajo abarca tres experimentos fundamentales de la física moderna:

### 1. Efecto Fotoeléctrico
Estudio de la emisión de electrones en un material al incidir radiación electromagnética.
* **Objetivo:** Determinar la constante de Planck ($h$) y la función de trabajo ($\varphi$) del material.
* **Método:** Medición del potencial de frenado ($V_0$) frente a diferentes frecuencias de luz (filtros de color) y verificación de la independencia de la intensidad.
* **Resultados Clave:**
    * Constante de Planck calculada: $h \approx 5.69 \times 10^{-34} \text{ J}\cdot\text{s}$ (Error relativo del 14%).
    * Función de trabajo: $\varphi \approx 1.525 \text{ eV}$.
    * Confirmación de que el potencial de frenado es constante frente a la intensidad de la luz.

### 2. Espectro de Emisión
Análisis de las líneas espectrales de distintos elementos químicos excitados.
* **Objetivo:** Identificar elementos desconocidos y verificar la fórmula de Rydberg para átomos hidrogenoides.
* **Método:** Uso de espectroscopio y red de difracción. Ajuste lineal de $1/\lambda$ frente a las transiciones energéticas.
* **Elementos Identificados:** Hidrógeno ($H$), Helio ($He$), Mercurio ($Hg$) y Neón ($Ne$).
* **Resultados Clave:**
    * Cálculo del número atómico para el Hidrógeno: $Z_{exp} \approx 1$.
    * Cálculo del número atómico para el Helio: $Z_{exp} \approx 1.7 \approx 2$.

### 3. Experimento de Franck-Hertz
Demostración de la cuantización de los niveles de energía en átomos de Mercurio.
* **Objetivo:** Confirmar el modelo atómico de Bohr.
* **Método:** Aceleración de electrones a través de vapor de mercurio y medición de caídas de corriente en el osciloscopio debido a choques inelásticos.
* **Resultados Clave:**
    * Energía de excitación medida: $4.92 \text{ eV}$.
    * Valor teórico de referencia: $4.9 \text{ eV}$.

## 💻 Requisitos y Ejecución del Código

El análisis de datos se ha realizado en **R**. Para ejecutar el script `practica1.R`, es necesario tener instaladas las siguientes librerías:

```r
install.packages("ggplot2")
install.packages("latex2exp")
```
El script genera automáticamente:
- Regresiones lineales para el efecto fotoeléctrico ($V$ vs $\nu$).
- Gráficas de los espectros de emisión ajustados a la fórmula de Rydberg.
- Cálculos de pendientes y errores experimentales.
