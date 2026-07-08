Feature: Gestión de activos logísticos

Scenario: Registro exitoso de un nuevo almacén
  Given el dueño de los almacenes entra a la sección de registro
  When anota el tamaño, el clima y las horas de atención
  Then el sistema guarda los datos para su visibilidad

Scenario: Actualización de datos de un almacén
  Given el dueño necesita corregir datos registrados
  When cambia la temperatura o el tamaño en el formulario
  Then el sistema actualiza la información de inmediato

Scenario: Validación de campos obligatorios en registro
  Given el usuario olvida llenar un campo obligatorio
  When intenta guardar el registro
  Then el sistema muestra un aviso indicando qué falta completar

Scenario: Registro exitoso de un vehículo de carga
  Given el dueño abre la parte de registro de vehículos
  When ingresa capacidad, peso y sube las fotos
  Then el sistema muestra el vehículo en la lista de servicios

Scenario: Visualización de flota activa
  Given el dueño quiere confirmar qué vehículos tiene activos
  When entra a su lista de transporte
  Then el sistema muestra la foto y capacidad de cada camión

Scenario: Error de carga en fotos de vehículo
  Given el usuario sube fotos que no cargan correctamente
  When presiona el botón de guardar
  Then el sistema avisa del problema para reintentar la subida
