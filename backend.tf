terraform {
  backend "pg" {
    host     = "pg.zuptalo.com"
    port     = 5433
    username = "terraform"
    password = "Xman@1360"
    database = "terraform_state_db"
    schema   = "public"
    sslmode  = "disable"
  }
}
