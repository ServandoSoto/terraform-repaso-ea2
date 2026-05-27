# CHANGELOG - terraform-repaso-ea2

Todos los cambios notables de este repositorio serán documentados en este archivo.
Formato basado en [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

---

## [v0.1.0] - 2026-05-26
### Added
- Código monolítico original entregado por el profesor
- Recursos: aws_vpc, aws_subnet, aws_internet_gateway, aws_route_table, aws_security_group, aws_instance, aws_s3_bucket

---

## [v0.2.0] - 2026-05-26
### Added
- Refactorización a arquitectura modular
- Módulo vpc_module con VPC, subnets, IGW, route table y security group
- Módulo ec2_module con instancia EC2
- Módulo s3_module con bucket S3, versionado y bloqueo de acceso público
- Archivo variables.tf raíz con todas las variables parametrizadas
- Archivo outputs.tf raíz con vpc_id, ec2_public_ip, s3_bucket_name

---

## [v0.3.0] - 2026-05-26
### Added
- Archivo .gitignore para excluir archivos terraform generados localmente
- README.md con descripción de arquitectura y justificación de versiones

---

## [v1.0.0] - 2026-05-27
### Added
- CHANGELOG.md agregado
- Módulos llamados desde GitHub con versión v1.0.0
### Changed
- Versión estable y funcional de la infraestructura modular completa
- Cambio de arquitectura monolítica a modular (MAJOR)
