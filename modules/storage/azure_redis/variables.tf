variable "redis_cache_instances" {
  type = map(object({
    sku      = string
    name     = string
    rgname   = string
    capacity = number
    location = string
    family   = string
  }))
}