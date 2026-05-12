#USER 1
Feature: Registro de cuenta personal

  Scenario: Registro exitoso de una cuenta personal
    Given el usuario está en la página de registro y selecciona "Cuenta Personal"
    When ingresa un nombre de usuario único
    And ingresa un correo electrónico válido
    And ingresa una contraseña válida de al menos 6 caracteres
    Then el sistema debe validar que el usuario no exista
    And crear una nueva cuenta con el rol de usuario personal
    And redirigir automáticamente al usuario a la pantalla de inicio de sesión

#USER 2
Feature: Registro de cuenta familiar

  Scenario: Registro exitoso de una cuenta familiar
    Given el usuario está en la página de registro y selecciona "Cuenta Familiar"
    When ingresa su nombre de usuario, correo y contraseña
    And ingresa el nombre para su grupo familiar
    Then el sistema debe crear la cuenta y el grupo familiar
    And generar un código de invitación único para la familia
    And redirigir al usuario a la pantalla de inicio

#USER 3
Feature: Registro de cuenta de institución educativa

  Scenario: Registro exitoso de cuenta de institución educativa
    Given el usuario está en la página de registro y selecciona "Cuenta Institucional"
    When ingresa su nombre de usuario, correo, contraseña
    And ingresa el nombre y tipo de la institución
    Then el sistema debe crear la cuenta y la institución
    And generar un código de invitación único para la institución
    And redirigir al usuario a la pantalla de inicio

#USER 4
Feature: Inicio de sesión

  Scenario: Inicio de sesión exitoso
    Given el usuario está en la página de inicio de sesión
    When ingresa su nombre de usuario y contraseña correctos
    Then el sistema debe validar las credenciales y el rol del usuario
    And redirigir al usuario a su dashboard correspondiente (Personal, Familiar o Institucional)

#USER 5
Feature: Recuperación de contraseña

  Scenario: Solicitud de recuperación exitosa
    Given el usuario está en la página de inicio de sesión
    When hace clic en "¿Olvidaste tu contraseña?" e ingresa su correo registrado
    Then el sistema debe verificar si el correo existe
    And generar un token de seguridad único
    And simular el envío de un enlace de restablecimiento

#USER 6
Feature: Cálculo de huella de carbono personal

  Scenario: Cálculo exitoso de huella de carbono
    Given el usuario ha iniciado sesión y accede a la calculadora
    When completa el formulario con sus hábitos de transporte, energía y residuos
    Then el sistema debe calcular la huella total en kg de CO2e
    And guardar el resultado en el perfil del usuario
    And mostrar una gráfica de distribución del impacto

#USER 7
Feature: Cálculo de huella de carbono familiar

  Scenario: Contribución al cálculo familiar
    Given el usuario pertenece a una cuenta familiar y accede a la calculadora
    When completa el formulario con sus hábitos individuales
    Then el sistema debe calcular su huella personal
    And sumar automáticamente este valor al total de la huella familiar
    And actualizar el indicador en el Dashboard Familiar

#USER 8
Feature: Cálculo de huella de carbono de institución educativa

  Scenario: Contribución al cálculo institucional
    Given el usuario pertenece a una institución y accede a la calculadora
    When completa el formulario con sus hábitos personales
    Then el sistema debe calcular su huella individual
    And sumar este valor a la huella total de la institución
    And actualizar las estadísticas en el Dashboard Institucional

#USER 9
Feature: Registro de actividades diarias

  Scenario: Registro exitoso de actividad y obtención de puntos
    Given el usuario está en la página de registro de actividades
    When ingresa los detalles de una actividad sostenible (ej. transporte en bici)
    Then el sistema debe guardar la actividad en el historial
    And otorgar puntos de gamificación al usuario
    And mostrar un mensaje de confirmación con los puntos ganados

#USER 10
Feature: Registro de actividades familiares

  Scenario: Contribución a la actividad familiar
    Given el usuario con rol familiar registra una actividad diaria
    When guarda la actividad en el sistema
    Then el sistema debe vincular la actividad al usuario
    And mostrar la actividad en el feed reciente del Dashboard Familiar
    And otorgar puntos al usuario individual

#USER 11
Feature: Registro de actividades del campus

  Scenario: Contribución a la actividad institucional
    Given el usuario con rol institucional registra una actividad
    When guarda la actividad en el sistema
    Then el sistema debe vincular la actividad a la institución
    And mostrar la actividad en el feed del Dashboard Institucional
    And sumar la participación al contador de la institución

#USER 12
Feature: Recomendaciones personalizadas

  Scenario: Generación de recomendaciones basadas en la huella
    Given el usuario ha calculado previamente su huella de carbono
    When accede a la sección de "Recomendaciones" desde su perfil
    Then el sistema debe analizar sus resultados guardados
    And mostrar tarjetas de consejos priorizadas según el nivel de impacto (Alto, Medio, Bajo)

#USER 13
Feature: Recomendaciones para familias

  Scenario: Recomendaciones basadas en el total familiar
    Given el usuario pertenece a una familia con huella calculada
    When accede a las recomendaciones
    Then el sistema debe analizar la huella total acumulada de la familia
    And sugerir acciones grupales para reducir el consumo en el hogar

#USER 14
Feature: Recomendaciones para instituciones

  Scenario: Recomendaciones estratégicas institucionales
    Given el usuario pertenece a una institución
    When accede a las recomendaciones
    Then el sistema debe mostrar estrategias de sostenibilidad adaptadas al tipo de organización (Colegio, Empresa)
    And sugerir mejoras de infraestructura o políticas comunitarias

#USER 15
Feature: Comparativas de huella de carbono

  Scenario: Comparativa con la comunidad global
    Given el usuario ha calculado su huella de carbono
    When accede a la sección de "Comparativa"
    Then el sistema debe mostrar un gráfico de barras
    And comparar su huella personal contra el promedio de todos los usuarios y el usuario más eficiente

#USER 16
Feature: Rankings de sostenibilidad

  Scenario: Visualización del Ranking Global
    Given existen usuarios con huella calculada en la base de datos
    When el usuario accede a la sección de "Rankings"
    Then el sistema debe mostrar un podio con los 3 usuarios más sostenibles
    And listar a los competidores ordenados por menor huella de carbono

#USER 17
Feature: Acceso a recursos educativos

  Scenario: Exploración de la biblioteca de recursos
    Given el usuario accede a la sección de "Recursos"
    When el sistema carga la lista de contenidos disponibles
    Then debe mostrar tarjetas con videos, artículos y podcasts
    And permitir al usuario abrir el enlace original del recurso seleccionado

#USER 18
Feature: Juegos y quizzes educativos

  Scenario: Participación en Trivia Ecológica
    Given el usuario accede a la sección de "Juegos"
    When inicia el Quiz y responde las 10 preguntas aleatorias
    Then el sistema debe calcular su puntaje final
    And sumar los puntos ganados directamente a su saldo para la tienda

#USER 19
Feature: Integración con redes sociales

  Scenario: Compartir logros en redes sociales
    Given el usuario ha completado una actividad y ve sus resultados
    When hace clic en el botón de compartir (WhatsApp, Twitter, LinkedIn)
    Then el sistema debe abrir una ventana con un mensaje predefinido sobre su logro listo para publicar

#USER 20
Feature: Sistema de puntos (Gamificación)

  Scenario: Acumulación de puntos
    Given el usuario realiza una acción positiva (registro, cálculo, quiz)
    When la acción se completa exitosamente
    Then el sistema debe asignar una cantidad de puntos predefinida
    And notificar al usuario mediante una alerta o notificación en el header

#USER 21
Feature: Canje de recompensas

  Scenario: Canje de puntos en la tienda
    Given el usuario tiene saldo de puntos suficiente
    When selecciona un producto o cupón en la "Tienda" y confirma el canje
    Then el sistema debe descontar los puntos de su saldo
    And generar una notificación confirmando la adquisición de la recompensa
