terraform {
  backend "pg" {
    conn_str = "postgres://pg.zuptalo.com:5433/terraform_state_db?user=terraform&password=Xman@1360&sslmode=disable"
  }
}
