#!/bin/bash

# Setup
source=/home/smartium/src/CloudWatch

# Load Libraries
source "$source/functions.sh"

# Install
title "Procesando health checks!"


# Check Production (AltoViaje)

	check "https://api.altoviaje.com.ar/health"
	check "https://www.altoviaje.com.ar/health"
	check "https://empresas.altoviaje.com.ar/health"
	check "https://personas.altoviaje.com.ar/health"
	check "https://backoffice.altoviaje.com.ar/health"

# Check Testing (AltoViaje)

	# check "https://api.altoviaje.com.ar:8080/health"
	# check "https://www.altoviaje.com.ar:8080/health"
	# check "https://empresas.altoviaje.com.ar:8080/health"
	# check "https://personas.altoviaje.com.ar:8080/health"
	# check "https://backoffice.altoviaje.com.ar:8080/health"


# Check Production (Smartium)

	check "http://smartiumtech.com/health"					# Warning: debería estar en https
	check "http://api.smartiumtech.com:8000/health"			# Warning: debería estar en el 80 + https
	check "http://admin.smartiumtech.com/health"			# Warning: debería estar en https
	check "http://app2.smartiumtech.com/health"				# Warning: debería estar en https


# Check Testing (Smartium)

	# check "http://smartiumtech.com:8080/health"				# Warning: debería estar en https
	# check "http://api.smartiumtech.com:8080/health"			# Warning: debería estar en el 80 + https
	# check "http://admin.smartiumtech.com:8080/health"			# Warning: debería estar en https
	# check "http://app2.smartiumtech.com:8080/health"			# Warning: debería estar en https



# Bye!
bye