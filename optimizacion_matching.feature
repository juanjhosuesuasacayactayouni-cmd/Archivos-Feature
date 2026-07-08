Feature: Optimización de Matching

Scenario: Matching exitoso con alta compatibilidad
  Given el cliente ingresa requisitos de su carga
  When activa la función de matching
  Then el sistema muestra opciones con al menos 90% de compatibilidad

Scenario: Sin coincidencias disponibles
  Given el cliente busca un activo con filtros específicos
  When el algoritmo no encuentra coincidencias
  Then el sistema indica la falta de activos y sugiere flexibilizar filtros
