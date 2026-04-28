# Reflexión sobre uso de IA

## Uso de IA
La IA se utilizó como apoyo para:
- Estructurar la documentación técnica de forma consistente.
- Proponer redacción clara de alcance, riesgos y pruebas.
- Revisar estilo de comentarios y orden lógico de secciones.

## Validación manual
Para evitar errores de alucinación técnica, se realizó:
- Revisión manual de syscalls ARM64 usadas en el código.
- Verificación de que la macro realmente se invoca.
- Contraste entre salida esperada en `docs/plan_de_pruebas.md` y salida real del binario.

## Riesgos de IA detectados
- Sugerencias de sintaxis incompatibles con ensamblador objetivo.
- Propuestas de alcance excesivo para una práctica corta.
- Omisiones en criterios de aceptación si no se valida manualmente.

## Aprendizajes
- La IA acelera la documentación, pero no sustituye la comprensión de registros, syscalls y flujo de ejecución.
- La práctica pequeña y bien acotada mejora la calidad de entrega.
- La trazabilidad entre propuesta, código y pruebas facilita evaluación por competencias.

## Declaración de integridad académica
Declaro que el contenido fue revisado y comprendido de forma manual. La IA se usó como herramienta de apoyo y no reemplaza mi responsabilidad técnica ni mi autoría académica.
