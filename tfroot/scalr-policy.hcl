version = "v1"

policy "simple_policy" {
    enabled = true
    enforcement_level = "advisory"
}

policy "deny_old_mysql" {
    enabled = true
    enforcement_level = "soft-mandatory"
}
