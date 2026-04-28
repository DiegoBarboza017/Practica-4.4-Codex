### FILE: README.md

[INICIO_ARCHIVO]
# Práctica temática: Microproyecto en ARM64 Assembly (No optimizado)

## Contexto
En esta actividad vas a diseñar y documentar una práctica técnica pequeña para GitHub Classroom, enfocada en resolver un problema concreto con herramientas de bajo nivel. El núcleo de implementación será ARM64 Assembly, con alcance acotado para que sea viable en entornos académicos con recursos limitados.

## Objetivo general
Diseñar, justificar, documentar e implementar de forma mínima un microproyecto funcional en ARM64 Assembly (no optimizado), priorizando la planeación técnica, la estructura del repositorio y la validación por pruebas básicas.

## Competencias
- Explica un problema técnico y lo traduce a un alcance implementable.
- Diseña una estructura de repositorio clara y mantenible para GitHub Classroom.
- Implementa funcionalidades básicas en ARM64 Assembly usando al menos una macro.
- Define y ejecuta pruebas simples con criterios medibles.
- Reflexiona de forma crítica sobre el uso responsable de IA en desarrollo.

## Instrucciones rápidas
1. Lee los archivos en `docs/` y completa cada sección solicitada.
2. Define un microproyecto con **3 a 5 funcionalidades pequeñas**.
3. Implementa el núcleo en ARM64 Assembly, incluyendo **al menos 1 macro funcional**.
4. Mantén el código funcional alrededor de **~150 líneas sugeridas**.
5. Documenta decisiones técnicas, pruebas y limitaciones.
6. Sube tus avances por commits claros y frecuentes.

## Criterios de entrega
- Entrega exactamente los 6 archivos requeridos por la actividad.
- Coherencia entre problema, alcance, implementación y pruebas.
- Cumplimiento de restricciones técnicas (sin Python, sin stacks pesados).
- Redacción técnica clara, verificable y profesional.

## Rúbrica
| Criterio | Excelente (100) | Satisfactorio (80) | Básico (60) | Insuficiente (0-50) |
|---|---|---|---|---|
| Definición del problema y justificación | Problema claro, relevante y bien sustentado | Problema claro con sustento parcial | Problema ambiguo | Sin definición clara |
| Diseño técnico y arquitectura | Arquitectura completa y viable | Arquitectura funcional con huecos menores | Arquitectura superficial | Sin arquitectura |
| Implementación ARM64 + macro | Cumple totalmente, funciona y es consistente | Cumple con detalles menores pendientes | Cumple parcialmente | No cumple restricciones |
| Plan y evidencia de pruebas | Casos medibles y resultados consistentes | Casos suficientes con poca evidencia | Casos incompletos | Sin plan de pruebas |
| Reflexión de IA e integridad | Reflexión crítica y honesta | Reflexión adecuada | Reflexión mínima | No entrega reflexión |
[FIN_ARCHIVO]

### FILE: docs/propuesta.md

[INICIO_ARCHIVO]
# Propuesta de microproyecto

## Problema
Describe una necesidad concreta y pequeña que pueda resolverse desde terminal con ARM64 Assembly.

**Ejemplo guía:** “Quiero un microherramienta que procese una cadena de texto y muestre estadísticas básicas (longitud, número de vocales y número de dígitos) para practicar lectura de memoria y llamadas al sistema.”

## Justificación
Explica por qué este microproyecto es útil para tu formación en arquitectura de computadoras y programación de sistemas:
- Qué concepto(s) de bajo nivel practicarás.
- Por qué el tamaño del proyecto es realista para el tiempo disponible.
- Cómo aporta a tu portafolio técnico.

## Alcance y límites
### Alcance (sí incluye)
- 3 a 5 funcionalidades pequeñas.
- Entrada y salida por terminal.
- Manejo básico de errores esperados.

### Límites (no incluye)
- Interfaces gráficas.
- APIs pagadas o servicios cloud.
- Bases de datos obligatorias.
- Frameworks pesados.

## Arquitectura (alto nivel)
Describe módulos/componentes y su interacción. Incluye una propuesta breve como:
- `main.s`: flujo principal y control del programa.
- `macros.s`: macro(s) reutilizable(s) para impresión o lectura.
- `helpers.s` (opcional): rutinas de apoyo.
- `scripts/run.sh` (opcional): compilación/ejecución simplificada.

## Riesgos y mitigación
- **Riesgo 1:** Errores de segmentación o manejo de registros.
  - **Mitigación:** pruebas por bloques y comentarios por rutina.
- **Riesgo 2:** Alcance excesivo.
  - **Mitigación:** priorizar funcionalidad mínima viable.
- **Riesgo 3:** Dependencia excesiva de IA.
  - **Mitigación:** validación manual línea por línea y pruebas propias.

## Supuestos
- Ambiente Linux con toolchain compatible para ARM64.
- Tiempo de trabajo distribuido por etapas (diseño, implementación, pruebas).
- Conocimiento previo básico de terminal y control de versiones.
[FIN_ARCHIVO]

### FILE: docs/caso_de_uso.md

[INICIO_ARCHIVO]
# Caso de uso principal

## Actor principal
Estudiante de ingeniería/sistemas que ejecuta una herramienta de terminal para resolver una tarea simple.

## Flujo principal
1. El usuario ejecuta el programa desde terminal.
2. El sistema solicita o recibe un dato de entrada simple.
3. El programa procesa la entrada con rutinas ARM64.
4. El sistema muestra resultados claros en pantalla.
5. El programa finaliza con código de salida esperado.

## Escenario alterno 1
**Entrada vacía o inválida**
1. El usuario ejecuta sin parámetros válidos.
2. El sistema detecta la condición.
3. El programa muestra mensaje de uso correcto.
4. Termina sin fallo crítico.

## Escenario alterno 2
**Caracteres no contemplados**
1. El usuario captura símbolos inesperados.
2. El sistema ignora o reporta de forma controlada.
3. El programa continúa o finaliza con advertencia clara.

## Precondiciones
- Programa compilado correctamente.
- Permisos de ejecución disponibles.
- Entorno de terminal funcional.

## Postcondiciones
- Se imprime una salida consistente con la entrada.
- Se registra resultado final esperado por la funcionalidad.
- El proceso termina sin colgarse.

## Criterios de aceptación
- Responde correctamente en casos normales y al menos 2 casos límite.
- Muestra mensajes entendibles para usuario técnico inicial.
- Cumple el alcance de 3 a 5 funcionalidades pequeñas.
[FIN_ARCHIVO]

### FILE: docs/estructura_repositorio.md

[INICIO_ARCHIVO]
# Estructura del repositorio

## Árbol de carpetas
```text
nombre-del-proyecto/
├── README.md
└── docs/
    ├── propuesta.md
    ├── caso_de_uso.md
    ├── estructura_repositorio.md
    ├── plan_de_pruebas.md
    └── reflexion_ia.md
```

## Descripción de archivos clave
- `README.md`: guía general de la práctica, criterios y rúbrica.
- `docs/propuesta.md`: problema, alcance, arquitectura y riesgos.
- `docs/caso_de_uso.md`: flujo principal, alternos y aceptación.
- `docs/estructura_repositorio.md`: organización y convenciones.
- `docs/plan_de_pruebas.md`: estrategia, casos y aprobación.
- `docs/reflexion_ia.md`: uso de IA, validación manual e integridad.

## Convenciones de nombres
- Archivos en minúsculas y con guion bajo (`snake_case`).
- Títulos descriptivos y técnicos.
- Commits en imperativo, por ejemplo: `Agrega plan de pruebas inicial`.

## Versionado simple
- `v0.1`: propuesta y estructura base.
- `v0.2`: implementación mínima ARM64 + macro.
- `v1.0`: pruebas completas y documentación final.
[FIN_ARCHIVO]

### FILE: docs/plan_de_pruebas.md

[INICIO_ARCHIVO]
# Plan de pruebas

## Estrategia de pruebas
Se aplicarán pruebas funcionales de caja negra sobre entradas representativas y casos límite, validando salida esperada en terminal y comportamiento de error controlado.

## Casos de prueba
| ID | Entrada | Resultado esperado | Criterio de éxito |
|---|---|---|---|
| CP-01 | Entrada válida simple | Salida correcta con formato definido | Coincide 100% con especificación |
| CP-02 | Entrada vacía | Mensaje de uso/advertencia | No hay fallo crítico |
| CP-03 | Entrada con caracteres especiales | Manejo controlado del caso | Programa finaliza correctamente |
| CP-04 | Entrada límite (longitud máxima definida) | Respuesta estable sin corrupción | Tiempo y salida aceptables |

## Cobertura mínima
- 1 prueba por cada funcionalidad principal.
- 2 pruebas de escenarios alternos.
- Validación de la macro obligatoria en al menos 1 caso.

## Criterios de aprobación
- 100% de casos críticos (CP-01 y CP-02) aprobados.
- Al menos 80% del total de casos aprobados.
- Sin errores de ejecución bloqueantes.
[FIN_ARCHIVO]

### FILE: docs/reflexion_ia.md

[INICIO_ARCHIVO]
# Reflexión sobre uso de IA

## Uso de IA
Describe de forma transparente en qué partes usaste IA (ideación, redacción, pseudocódigo, depuración) y qué prompts te resultaron más útiles.

## Validación manual
Explica cómo verificaste manualmente:
- Coherencia de la lógica en Assembly.
- Correcto uso de registros y llamadas al sistema.
- Correspondencia entre documentación y comportamiento real.

## Riesgos de IA
- Código plausible pero incorrecto en detalles de bajo nivel.
- Suposiciones erróneas sobre toolchain o sintaxis.
- Sobreconfianza en salidas no probadas.

## Aprendizajes
Describe qué aprendiste sobre:
- Diseño incremental de microproyectos.
- Importancia de pruebas en bajo nivel.
- Diferencia entre “generar” y “comprender” código.

## Declaración de integridad académica
“Declaro que revisé, entendí y validé manualmente cada parte de este trabajo. El uso de IA fue de apoyo y no sustituye mi autoría intelectual ni mi responsabilidad técnica.”
[FIN_ARCHIVO]

## Checklist final

- ✅ README.md
- ✅ docs/propuesta.md
- ✅ docs/caso_de_uso.md
- ✅ docs/estructura_repositorio.md
- ✅ docs/plan_de_pruebas.md
- ✅ docs/reflexion_ia.md
