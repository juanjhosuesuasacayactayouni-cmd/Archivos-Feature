Feature: Monitoreo y Auditoría

Scenario: Visualización de historial de uso
  Given el cliente ve detalles de un activo sugerido
  When selecciona la opción ver historial
  Then el sistema despliega el gráfico de ocupación de los últimos 28 días

Scenario: Historial para activo nuevo
  Given el activo tiene menos de 24h registrado
  When el cliente intenta ver el historial
  Then el sistema muestra valores en 0 y un mensaje de activo nuevo

Scenario: Rastreo GPS en tiempo real
  Given el usuario aceptó el contrato autogenerado
  When activa el mapa GPS
  Then visualiza el mapa en 3D con la ubicación del activo

Scenario: Monitoreo del estado de la mercancía
  Given el cliente quiere saber el estado de su carga
  When selecciona el monitoreo en tiempo real
  Then visualiza el estado y detalles del vehículo

Scenario: Alerta por salida de ruta
  Given el proveedor monitorea el vehículo rentado
  When el vehículo sale de la ruta establecida
  Then el proveedor recibe un mensaje de alerta por desvío

Scenario: Seguridad durante el transporte
  Given el proveedor necesita asegurar su mercancía
  When utiliza el monitoreo GPS
  Then recibe información del vehículo y alertas de cambio de ruta

Scenario: Alerta de capacidad máxima alcanzada
  Given el sistema monitorea un activo
  When la carga alcanza el 90% de su capacidad
  Then el sistema emite una alerta sonora y visual

Scenario: Estado de carga óptimo
  Given el sistema monitorea un activo
  When la carga es menor al 90%
  Then el sistema marca el activo como "Óptimo" sin alertas

Scenario: Registro de auditoría (logs)
  Given un usuario modifica un perfil o inicia sesión
  When el administrador accede a la sección de auditoría
  Then el sistema muestra fecha, ID de usuario y acción realizada

Scenario: Acceso denegado a auditoría
  Given un usuario sin permisos intenta entrar a la URL de auditoría
  When el sistema detecta el intento
  Then bloquea el acceso y redirige con un mensaje de error
