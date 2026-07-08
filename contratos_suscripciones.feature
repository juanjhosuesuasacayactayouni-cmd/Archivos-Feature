Feature: Contratos y Suscripciones

Scenario: Generación de Smart Contracts
  Given cliente y proveedor confirman un acuerdo
  When el sistema recibe la confirmación
  Then autogenera un contrato inmutable en la Blockchain

Scenario: Visualización de contrato activo
  Given el contrato fue registrado
  When el usuario entra a la sección de contratos
  Then visualiza el contrato activo durante el tiempo de uso

Scenario: Activación de plan y facturación
  Given el usuario selecciona un plan y paga
  When completa el pago en la pasarela externa
  Then el sistema activa el plan y genera la factura electrónica

Scenario: Notificación de vencimiento
  Given faltan 5 días para que venza la suscripción
  When el sistema detecta la fecha
  Then envía notificación por correo y alerta push
