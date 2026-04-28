# Caso de uso: suma mínima en ARM64

## Actor principal
Estudiante de sistemas/embebidos que ejecuta un programa ARM64 en terminal para validar un flujo básico de cálculo y salida.

## Flujo principal
1. El actor compila `src/main.s`.
2. Ejecuta el binario generado.
3. El programa carga dos enteros predefinidos.
4. Realiza la suma en registros ARM64.
5. Imprime mensaje y resultado por salida estándar.
6. Termina correctamente con código de salida `0`.

## Escenario alterno 1: error de compilación
1. El actor ejecuta ensamblado con sintaxis incorrecta.
2. La herramienta reporta error de línea.
3. El actor corrige el archivo y recompila.
4. El binario se genera correctamente.

## Escenario alterno 2: ejecución en entorno no ARM64
1. El actor intenta correr el binario en arquitectura no compatible.
2. El sistema rechaza la ejecución.
3. El actor usa emulación compatible o entorno ARM64.
4. Reintenta y valida resultado.

## Precondiciones
- `src/main.s` existe y está íntegro.
- Herramientas de ensamblado/enlace instaladas.
- Permisos de ejecución en el binario final.

## Postcondiciones
- Se muestra una salida clara con el resultado de la suma.
- El programa termina sin fallos críticos.
- El resultado es verificable contra cálculo manual.

## Criterios de aceptación
- Compila sin errores.
- Ejecuta y muestra el formato de salida esperado.
- El resultado numérico coincide con la suma definida.
- Incluye y usa al menos una macro funcional de salida.
