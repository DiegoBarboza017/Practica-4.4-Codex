# Plan de pruebas

## Estrategia
Se aplicarán pruebas funcionales de caja negra sobre compilación, ejecución y exactitud del resultado de suma. También se verificará el uso de macro de salida y la finalización correcta del proceso.

## Casos de prueba
| ID | Entrada | Resultado esperado | Criterio de éxito |
|---|---|---|---|
| CP-01 | `as src/main.s -o main.o` | Ensamblado exitoso | Código de salida 0 y sin errores |
| CP-02 | `ld main.o -o main` | Enlace exitoso | Binario generado |
| CP-03 | `./main` | Imprime mensaje y resultado correcto | Salida contiene `Resultado: 12` |
| CP-04 | Validación de macro `PRINT` en código | Macro invocada al menos una vez | Presencia verificable en `src/main.s` |
| CP-05 | Revisión de cierre de proceso | Programa termina limpio | Código de salida 0 |

## Cobertura mínima
- 100% de funcionalidades implementadas en `main.s`.
- 100% de syscalls usadas en el flujo principal verificadas por ejecución.
- 1 prueba explícita sobre uso de macro.

## Criterios de aprobación
- Aprobación obligatoria de CP-01, CP-02 y CP-03.
- Al menos 4 de 5 casos totales en estado exitoso.
- Sin errores críticos de compilación o ejecución.
