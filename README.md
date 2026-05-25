# Infraestructura Modular - EA2

Refactorización de infraestructura monolítica a arquitectura modular usando Terraform.

## Estructura de módulos

repaso/
├── main.tf          # Llamadas a los módulos
├── variables.tf     # Variables del root
├── outputs.tf       # Outputs finales
├── vpc_module/      # Módulo de red
├── ec2_module/      # Módulo de cómputo
└── s3_module/       # Módulo de almacenamiento

## Módulos

### vpc_module
Crea la infraestructura de red: VPC, subnets pública y privada, internet gateway, route table y security group. Expone los IDs de sus recursos para que otros módulos puedan usarlos.

### ec2_module
Despliega una instancia EC2 con Apache instalado vía user_data. Recibe el subnet_id y security_group_id desde el vpc_module a través del root.

### s3_module
Crea un bucket S3 con nombre único (usando random_id), versionado habilitado y acceso público bloqueado.

## Justificación de versiones

| Versión | Tipo | Descripción |
|---------|------|-------------|
| v0.1.0 | Inicial | Commit inicial de cada módulo |
| v0.2.0 | MINOR | Agregación de documentación terraform-docs |
| v1.0.0 | MAJOR | Versión estable — cambio de arquitectura monolítica a modular |

El salto a v1.0.0 representa un cambio de arquitectura completo respecto a la versión monolítica (v0.1.0), lo que justifica el incremento MAJOR según SemVer.

## Uso

```hcl
module "vpc" {
  source = "github.com/ServandoSoto/terraform-vpc-module?ref=v1.0.0"
}
```