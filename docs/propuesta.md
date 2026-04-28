# Propuesta técnica del microproyecto

## Problema
En laboratorios de arquitectura de computadoras, el estudiantado suele escribir programas ARM64 sin una base documental clara sobre alcance, pruebas y estructura del repositorio. Esto provoca entregas difíciles de evaluar, con funcionalidad incompleta o sin criterios medibles.

## Justificación
Este microproyecto propone una práctica mínima y bien delimitada: **sumar dos enteros y mostrar el resultado en terminal usando ARM64 Assembly**. Aunque es un caso sencillo, permite practicar competencias clave de bajo nivel:
- Uso de registros generales (`x0`-`x8`) y convenciones básicas de llamada.
- Separación entre datos, lógica y salida.
- Reutilización de código mediante macro.
- Trazabilidad entre objetivo, implementación y pruebas.

## Alcance y límites
### Alcance
1. Capturar dos valores enteros definidos en código (constantes para simplificar).
2. Ejecutar la suma en ARM64.
3. Mostrar mensaje de salida y resultado.
4. Finalizar con llamada al sistema de salida (`exit`).

### Límites
- Sin interfaz gráfica.
- Sin servicios cloud.
- Sin base de datos.
- Sin Python ni frameworks pesados.
- Sin optimizaciones avanzadas; se prioriza claridad técnica.

## Arquitectura (alto nivel)
- `src/main.s`
  - Define sección de datos para mensajes.
  - Incluye macro `PRINT` para salida por `write`.
  - Implementa flujo principal `_start`: cálculo, conversión simple y salida.
- `docs/*.md`
  - Documentan decisiones, alcance, pruebas y criterios de calidad.

## Riesgos y mitigación
- **Riesgo:** errores de sintaxis ensamblador o linker.
  - **Mitigación:** compilar por pasos (`as` y `ld`) y validar mensajes de error.
- **Riesgo:** confusión con syscalls ARM64 Linux.
  - **Mitigación:** comentar cada syscall en el código y usar tabla de pruebas.
- **Riesgo:** desalineación entre docs y código.
  - **Mitigación:** actualizar documentación al cierre de cada cambio funcional.

## Supuestos
- Ambiente Linux con toolchain ARM64 disponible (nativo o por emulación).
- Estudiante con conocimientos básicos de terminal y Git.
- Práctica de alcance pequeño (3 a 5 microfuncionalidades como máximo en futuras extensiones).
